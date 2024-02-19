//
//  silk.swift
//  AnimatedApp
//
//  Created by 이윤지 on 11/18/23.
//
import SwiftUI


struct DATETIME: View {
    var body: some View {
        TEXT()
    }
}

struct DATETIME_Previews: PreviewProvider {
    static var previews: some View {
        DATETIME()
    }
}


struct TEXT: View {
    //토글
    @State var multiColor = false
    @State var selectedDate = Date()
    @State var showDatePicker = false
    @State var isDarkMode = false

    
    var body: some View {
        ZStack {
            VStack(spacing: 15){
                TextShimer(text: "HBD Clup", mutiiColors: $multiColor)
               
               TextShimer(text: "Ticket", mutiiColors: $multiColor)
               // Text("03.09")
                    //.padding()
                        .font(.system(size: 55))
                        .foregroundColor(.orange)
                    
                    .onTapGesture {
                        showDatePicker.toggle()
                    }
             //   if !showDatePicker {
                    Toggle(isOn: $isDarkMode, label: {
                        Text("Dark Mode")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    })
                    .padding()
                    .onChange(of: isDarkMode) { newValue in
                        if newValue {
                            multiColor = true
                        } else {
                            multiColor = false
                        }
                    }              
            }
            
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
       
    }
    
}




//text물결

struct TextShimer: View {
    var text: String
    @State var animation = false
    @Binding var mutiiColors: Bool
    var body: some View{
        
        ZStack{
            
            Text(text)
                .font(.system(size: 55, weight: .bold))
                //원래 글자색🐼
                .foregroundColor(Color.black)
       
            
            
            //뮤트컬러 글자
            HStack(spacing: 0){
                ForEach(0..<text.count,id: \.self){index in
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 55, weight: .bold))
                        .foregroundColor(mutiiColors ? ramdomColor() : Color.white)
                    
                }
                
            }
            .mask(
                Rectangle()
                    .fill(
                        LinearGradient(gradient: .init(colors: [Color.red.opacity(0.5),Color.blue,Color.purple.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    )
                    .rotationEffect(.init(degrees: 70))
                    .padding(20)
                    .offset(x: -250)
                    .offset(x: animation ? 500 : 0)
                
            )
            .onAppear(perform: {
                
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)){
                  
                    animation.toggle()
                }
            })
        }
    }
    func ramdomColor()->Color{
        let color = UIColor(red: 1, green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        
        return Color(color)
    }
}
