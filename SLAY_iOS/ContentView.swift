//
//  ContentView.swift
//  SLAY_iOS
//
//  Created by 이윤지 on 2/19/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI
import RiveRuntime

struct ContentView: View {
    @State var show = true
    @State var isOpen = false
    @State var multiColor = false
    
    
//    @State var showOnboarding = false
//    @State var mutiiColors = false
//    @State var showModal = false
    
   // var button = RiveViewModel(fileName: "menu_button", stateMachineName: "State Machine", autoplay: false, animationName: "open")
    
    var body: some View {
        ZStack {
            Color(UIColor.black).opacity(0.8).ignoresSafeArea()
//           Color(hex: "17203A").ignoresSafeArea()
//
//            SideMenu()
//                .padding(.top, 50)
//                .opacity(isOpen ? 1 : 0)
//                .offset(x: isOpen ? 0 : -300)
//                .rotation3DEffect(.degrees(isOpen ? 0 : 30), axis: (x: 0, y: 1, z: 0))
//                .ignoresSafeArea(.all, edges: .top)
            
            TabBarR(selectedYoutube: .constant(nil), selectedBrand: .constant(nil))
                .safeAreaInset(edge: .bottom) {
                    Color.clear.frame(height: 80)
                }
                .safeAreaInset(edge: .top) {
                    Color.clear.frame(height: 104)
                }
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .rotation3DEffect(.degrees(isOpen ? 30 : 0), axis: (x: 0, y: -1, z: 0), perspective: 1)
                .offset(x: isOpen ? 265 : 0)
                .scaleEffect(isOpen ? 0.9 : 1)
                .scaleEffect(show ? 0.92 : 1)
                .ignoresSafeArea()
            
           // TabBarR(selectedYoutube: .constant(nil), selectedBrand: .constant(nil))
//                .offset(y: -24)
//                .background(
//                    LinearGradient(colors: [Color("Background").opacity(0), Color("Background")], startPoint: .top, endPoint: .bottom)
//                        .frame(height: 150)
//                        .frame(maxHeight: .infinity, alignment: .bottom)
//                        .allowsHitTesting(false)
//                )
//                .ignoresSafeArea()
//                .offset(y: isOpen ? 300 : 0)
//                .offset(y: show ? 200 : 0)
            
//            button.view()
//                .frame(width: 44, height: 44)
//                .mask(Circle())
////                .overlay(
////                        Circle()
////                            .fill(Color.purple.opacity(0.4)) // 보라색으로 변경
////                    )
//                .mask(Circle())
//                .shadow(color: Color("Shadow").opacity(0.2), radius: 5, x: 0, y: 5)
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//                .padding(.horizontal)
//                .offset(x: isOpen ? 216 : 0)
//
//                .onTapGesture {
//                    try? button.setInput("isOpen", value: isOpen)
//                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
//                        isOpen.toggle()
//                    }
//                }
//                .onChange(of: isOpen) { newValue in
//                    if newValue {
//                        UIApplication.shared.setStatusBarStyle(.lightContent, animated: true)
//                    } else {
//                        UIApplication.shared.setStatusBarStyle(.darkContent, animated: true)
//                    }
//                }
            
            Image(systemName: "person")
                .foregroundColor(.white)
                .frame(width: 36, height: 36)
                .background(.purple)
                .mask(Circle())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .shadow(color: Color("Shadow").opacity(0.2), radius: 5, x: 0, y: 5)
                .padding(.horizontal)
                .ignoresSafeArea()
               //🪿
                .padding()
                .offset(y: 4)
                .offset(x: isOpen ? 100 : 0)
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
            
            if show {
                OnboardingView(show: $show, mutiiColors: $multiColor)
              //  OnboardingView(show: $show, mutiiColors: $mutiiColors, showOnboarding: $showOnboarding, showModal: $showModal)
                //온보딩 배경색
//                    .background(.red)
                    .background(.purple)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: .black.opacity(0.5), radius: 40, x: 0, y: 40)
                    .ignoresSafeArea(.all, edges: .top)
                    .offset(y: show ? -10 : 0)
                    .zIndex(1)
                    .transition(.move(edge: .top))
            }
        }
    }
}

extension UIViewController {
    func setStatusBarStyle(_ style: UIStatusBarStyle) {
        if let statusBar = UIApplication.shared.value(forKey: "statusBar") as? UIView {
            statusBar.backgroundColor = style == .lightContent ? UIColor.black : .white
            statusBar.setValue(style == .lightContent ? UIColor.white : .black, forKey: "foregroundColor")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
