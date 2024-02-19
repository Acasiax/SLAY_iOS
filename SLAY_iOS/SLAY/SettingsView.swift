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
        
        
        NavigationView {
            List {
                Section(header: Text("일반 설정")) {
                    NavigationLink(destination: Text("일반 설정 화면")) {
                        HStack {
                            Image(systemName: "gear")
                            Text("일반")
                        }
                    }
                }
                
                Section(header: Text("앱 정보")) {
                    HStack {
                        Image(systemName: "info.circle")
                        Text("버전: \(appVersion)")
                    }
                }
                
                Section(header: Text("업데이트")) {
                    Button(action: {
                        // 업데이트 확인 및 처리 코드
                    }) {
                        HStack {
                            Image(systemName: "arrow.down.circle")
                            Text("업데이트 확인")
                        }
                    }
                }
            }
            
            .listStyle(InsetGroupedListStyle())
            
            .navigationTitle("설정")
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
