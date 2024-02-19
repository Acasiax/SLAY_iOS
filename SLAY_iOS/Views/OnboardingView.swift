//
//  OnboardingView.swift
//  AnimatedApp
//
//  Created by Meng To on 2022-04-11.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
   // let button = RiveViewModel(fileName: "button", autoplay: false)
    let button = RiveViewModel(fileName: "", autoPlay: false)
    @State var showModal = false
    @Binding var show: Bool
    @State var multiColor = false
    
   // var text: String
    @State var animation = false
    @Binding var mutiiColors: Bool
    
    
    
    var body: some View {
        ZStack {
            Color("Shadow").ignoresSafeArea()
                .opacity(showModal ? 0.4 : 0)
            
            content
                .offset(y: showModal ? -50 : 0)
            
            if showModal {
                SignInView(show: $showModal)
                    .opacity(showModal ? 1 : 0)
                    .offset(y: showModal ? 0 : 300)
                    .overlay(
                        Button {
                            withAnimation(.spring()) {
                                showModal.toggle()
                                print("🐹")
                            }
                        } label: {
                            Image(systemName: "xmark")
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                                .background(.white)
                                .mask(Circle())
                                .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                        .offset(y: showModal ? 0 : 200)
                    )
                    .transition(.opacity.combined(with: .move(edge: .top)))
                    .zIndex(1)
            }
            
            Button {
                withAnimation {
                    show.toggle()
                    print("🐝")
                    
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .frame(width: 36, height: 36)
                    .background(.black)
                    .mask(Circle())
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(20)
            .offset(y: showModal ? -200 : 80)
        }
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16) {
           //Text("SLAY FASHION SHOW")
        //    VStack(spacing: 15){
            
           TextShimer(text: "SLAY", mutiiColors: $multiColor)
            TextShimer(text: "FASHION", mutiiColors: $multiColor)
            TextShimer(text: "SHOW", mutiiColors: $multiColor)

                  //  .font(.custom("Poppins Bold", size: 58))
//                    .frame(width: 260, alignment: .leading)
//               TextShimer(text: "FASHION", mutiiColors: $multiColor)
//                    .font(.custom("Poppins Bold", size: 58))
//                    .frame(width: 260, alignment: .leading)
//
           // }
            // TextShimer(text: "SLAY FASHION SHOW", mutiiColors: $multiColor)
                .font(.custom("Poppins Bold", size: 58))
                .frame(width: 260, alignment: .leading)
            
            Text("우리의 SLAY는 패션의 우주를 탐험하는 듯한 경험을 선사합니다. 이 곳은 오로라와 같이 아름다운 원형을 이룬 행성에서 영감을 받아 만들어졌어요. 패션의 우주에서 함께 새로운 빛을 탐색하고 발견해보세요!")
                // .font(.custom("Cafe24Oneprettynight-v2.0", size: 18))
            //.font(.custom("PyeongChangPeace-Bold", size: 18))
            //.font(.custom("YUniverse-L", size: 18))
          //  .font(.custom("SSAntRegular", size: 18))
        //.customFont(.body)
        // .foregroundColor(.white)
             
           
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
//            button.view()
//                .frame(width: 236, height: 64)
//                .background(
//                    Color.black
//                        .cornerRadius(30)
//                        .blur(radius: 10)
//                        .opacity(0.3)
//                        .offset(y: 10)
//                )
//                .overlay(
//                    
//                    Label("카카오 로그인", systemImage: "arrow.forward")
//                        .offset(x: 4, y: 4)
//                       // .customFont(.headline)
//                        .customFont(.title3)
//                        .accentColor(.primary)
//                )
                .onTapGesture {
                    try? button.play(animationName: "active")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                        withAnimation(.spring()) {
                            showModal.toggle()
                        }
                    }
                }
         
//            Text("iOS 개발자는 이윤지이며 무려 2만명의 패션피플이 선택한 SLAY를 지금 만나보세요. SwiftUI로 제작하였습니다")
//                .customFont(.footnote)
//                .opacity(0.7)
        }
        .padding(40)
        .padding(.top, 40)
        .background(
            RiveViewModel(fileName: "shapes").view()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
                .blur(radius: 30)
                .blendMode(.hardLight)
        )
        .background(
            Image("Spline")
            
                .blur(radius: 50)
                .offset(x: 200, y: 100)
        )
    }
}

//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView(show: .constant(true))
//    }
//}



