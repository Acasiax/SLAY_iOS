//
//  PodList.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//

import SwiftUI


struct PodList: View {
    var podcasts: Album
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Image(podcasts.albumImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150) // 이미지 크기 고정
                
                // 텍스트를 별도의 VStack으로 래핑하지 않고 여기에 직접 배치
                Text(podcasts.albumShowTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .padding(.top, 2)
                
                Text("show \(podcasts.date)")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .padding(.top, 1)

                Spacer() // 나머지 공간을 채워서 이미지와 텍스트의 위치를 상단에 고정
            }
            .frame(width: 150) // VStack의 너비를 고정하여 내부 요소들의 레이아웃을 제어
        }
    }
}



//struct PodList: View {
//    var podcasts : Album
//    
//    var body: some View {
//        ZStack{
//            Color.black
//                .ignoresSafeArea()
//            VStack{
//                VStack(alignment: .leading){
//                    Image(podcasts.albumImage)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    // .frame(width: 150)
//                        .frame(width: 150, height: 150)
//                    
//                }
//               // .frame(width: 150)
//                VStack{Text(podcasts.albumShowTitle)
//                        .foregroundColor(.white)
//                        .font(.system(size: 17))
//                        .fontWeight(.semibold)
//                        .lineLimit(1)
//                        .padding(.top,2)
//                    Text("show \(podcasts.date)")
//                        .foregroundColor(.white)
//                        .font(.system(size: 13))
//                    .padding(.top,1)}
//            }
//        }
//        
//    }
//}

struct PodList_Previews: PreviewProvider {
    static var previews: some View {
        PodList(podcasts: albums[1])
    }
}
