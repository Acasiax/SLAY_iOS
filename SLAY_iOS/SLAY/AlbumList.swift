//
//  AlbumList.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//
//hj
import SwiftUI

struct AlbumList: View {
    var albums : Album
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea ()
            VStack(alignment: .leading){
                Image(albums.albumImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150) // Specify both width and height to keep the image size constant
                        .clipped() // Optionally clip the image to fit the frame exactly
                //  .frame(width: 150)
                
                Text(albums.albumShowTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .frame(width: 180)
                    .multilineTextAlignment(.leading)
                   // .lineLimit(1) // Limit to a single line
                    .truncationMode(.tail) // Truncate at the end with "..."
                    .padding(.top,2)
                    
                
                Text("Album \(albums.artistName)")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .padding(.top,1)
                
              //  albums.youtubeURL
            }
        
        }
    }
}

struct AlbumList_Previews: PreviewProvider {
    static var previews: some View {
        AlbumList(albums: albums[0])
    }
}


struct AlbumList000: View {
    var albums000 : FashionShow
    var body: some View {
        ZStack(alignment:.leading){
            Color.black
                .ignoresSafeArea ()
            VStack(alignment: .leading){
                Image(albums000.albumImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .leading)
                        .clipped()
            
                //  .frame(width: 150)
                
                    Text(albums000.showTitle)
                    .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .frame(width: 160, height: 60, alignment: .leading)
                        .truncationMode(.tail) // Truncate at the end with "..."
                        .padding(.top,-10)
                        
                Text("\(albums000.showLocation)")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .padding(.top,-10)
                    .frame(width: 150, alignment: .leading) // 여기서 alignment를 추가
                  //  .border(Color.red) // 레이아웃 경계 시각화
                    .multilineTextAlignment(.leading) // 필요한 경우 활성화
                
            }
         
               
            
        }
    }
}
