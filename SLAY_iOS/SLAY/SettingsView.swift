//
//  SettingsView.swift
//  AnimatedApp
//
//  Created by 이윤지 on 2/17/24.
//

import SwiftUI

struct SettingsView: View {
    // 앱 버전을 저장할 변수
    let appVersion: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "N/A"
    
 
    
    var body: some View {
        
        
        NavigationStack {
            ZStack{
                
                List {
                    
                    Section(header: Text("앱 정보")) {
                        HStack {
                            Image(systemName: "info.circle")
                            Text("버전:")
                            Spacer()
                            Text("\(appVersion)")
                        }
                    }
                    
//                    Section(header: Text("업데이트")) {
//                        Button(action: {
//                            // 업데이트 확인 및 처리 코드
//                            if let url = URL(string: "https://apps.apple.com/your-app-id") {
//                                 UIApplication.shared.open(url, options: [:], completionHandler: nil)
//                             }
//                        }) {
//                            HStack {
//                                Image(systemName: "arrow.down.circle")
//                                Text("업데이트 확인")
//                            }
//                        }
//                    }
                }
               // .background(.pink)
                .background(LinearGradient(colors: [.green.opacity(0.3), .blue.opacity(0.5)],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .scrollContentBackground(.hidden)
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("설정")
               
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
        // .preferredColorScheme(.dark) // 미리보기를 다크 모드로 설정
    }
}

