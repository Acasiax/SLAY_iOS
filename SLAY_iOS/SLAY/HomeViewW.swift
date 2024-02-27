//
//  HomeView.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//

import SwiftUI

struct HomeViewW: View {
    @State var selectedFashionShow: FashionShow!
    var mainAlbums : Album
    var mainPodcasts : Album
    var isledessts : Album
    @State var show = false
   
    @Binding var selectedBrand: Brand!
    @Binding var selectedYoutube: FashionShow!
    @State var seledctedAlbum : Album!
    

    
    var body: some View {
        ZStack{
            Color(.black)
            LinearGradient(gradient: Gradient(stops: [.init(color: .gray, location: 0.0),.init(color: .black, location: 0.25),.init(color: .black, location: 0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
                .ignoresSafeArea()
            ScrollView{
                ZStack{
//                    LinearGradient(gradient: Gradient(stops: [.init(color: .gray, location: 0.0),.init(color: .black, location: 0.25),.init(color: .black, location: 0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                        .ignoresSafeArea(.all)
                    VStack(alignment: .center){
                     //   Spacer(minLength: 10)
                        HStack{
                          
                            Text("Have a wonderful day !")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .fontWeight(.bold)
                            Spacer()
//                            Image(systemName: "clock.arrow.circlepath")
//                                .resizable()
//                                .foregroundColor(.white)
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 23, height: 23)
//                            Image(systemName: "gearshape")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .foregroundColor(.white)
//                                .frame(width: 23, height: 23)
//                                .padding(.leading, 10)
                        }
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.leading,10)
                        

                        
                        
                        
                        
                        
                        
                        HStack {
                            
                               Spacer(minLength: 20)
                            
                               VStack {
                                   HStack {
                                     
                                       Button(action: {
//                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum = albums6COLOR[0]
                                       }) {
                                           //이름
                                           NewItems(album: albums6COLOR[0])
                                       }
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[1]
                                       }) {
                                           NewItems(album: albums6COLOR[1])
                                       }
                                      
                                   }
                                       .frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.
                     
                                   HStack {
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum = albums6COLOR[2]
                                       }) {
                                           NewItems(album: albums6COLOR[2])
                                       }
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[3]
                                       }) {
                                           NewItems(album: albums6COLOR[3])
                                       }
                                   }.frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.
                                   
                                   
                                   HStack {
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[4]

                                       }) {
                                           NewItems(album: albums6COLOR[4])
                                       }
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[5]

                                       }) {
                                          NewItems(album: albums6COLOR[5])
                                       }
                                   }
                                   .frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.

                               }
//                               .frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.

                               Spacer(minLength: 20)
                                
                           }
                        
                        .fullScreenCover(isPresented: $show) {
                            YouTube222(selectedFashionShow: $selectedFashionShow, selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube)
                            
                                    }
                       
                        HStack{
                            Text("CHANEL show")
                                .padding(.leading,10)
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                               
                        } .padding(.bottom,-10)
                            .padding(.top,30)
                        HStack{
//                            Image(mainAlbums.artistImage)
                            Image("버지니비아르.보그코리아")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                                Text("버지니 비아르")
                              //  Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-10)
                        
                       
                        // 새로운 배열 ⛑️⛑️⛑️🧯
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(fashionShowListChannel, id: \.id) { album000 in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                selectedFashionShow =  album000
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album000)")
                                            }
                                        }) {
                                            AlbumList000(albums000: album000)
                                        }
                                    }
                                }
                            .padding(.leading)
                            .padding(.trailing)
                           
                        }
                        .padding(.bottom,30)
                        
                        HStack{
                            Text("GUCCI show")
                                .padding(.leading,10)
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                               
                        } .padding(.bottom,-10)
                        HStack{
//                            Image(mainAlbums.artistImage)
                            Image("구찌-사바토 데 사르노")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-10)
                 
                        //정사각형 리스트 구찌
                        // 새로운 배열 ⛑️⛑️⛑️🧯
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(fashionShowListGucci, id: \.id) { album000 in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                selectedFashionShow =  album000
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album000)")
                                            }
                                        }) {
                                            AlbumList000(albums000: album000)
                                        }
                                    }
                                }
                            .padding(.leading)
                            .padding(.trailing)
                           
                        }
                        
                        .fullScreenCover(isPresented: $show) {
                         //   YouTube222(selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube, seledctedAlbum: $seledctedAlbum)
                            
                                    }.padding(.bottom,30)
   
                       
                        HStack{
                            Text("DIOR show")
                                .padding(.leading,10)
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                               
                        } .padding(.bottom,-10)
                        HStack{
//                            Image(mainAlbums.artistImage)
                            Image("마리아 그라치아 치우리.디올")
                         //   Image("User1")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                                Text("마리아 그라치아 치우리")
                              //  Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-10)
                        //디올 show 문단 시작
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(fashionShowListDior, id: \.id) { album000 in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                selectedFashionShow =  album000
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album000)")
                                            }
                                        }) {
                                            AlbumList000(albums000: album000)
                                        }
                                    }
                                }
                          //  }
                            .padding(.leading)
                            .padding(.trailing)
                           
                        }
                        .padding(.bottom,30)

                        HStack{
                            Text("YSL show")
                                .padding(.leading,10)
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }.padding(.bottom,-10)
                        HStack{
//                            Image(mainAlbums.artistImage)
                            Image("안토니 바카렐로.압생로랑")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                                Text("안토니 바카렐로")
                              //  Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        
                        .padding(.bottom,-10)
                        
                        // 새로운 배열 ⛑️⛑️⛑️🧯
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(fashionShowListYSL, id: \.id) { album000 in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                selectedFashionShow =  album000
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album000)")
                                            }
                                        }) {
                                            AlbumList000(albums000: album000)
                                        }
                                    }
                                }
                          //  }
                            .padding(.leading)
                            .padding(.trailing)
                           
                        }
                        .padding(.bottom,30)
                        
                        HStack{
                            Text("BURBERRY show")
                                .padding(.leading,10)
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }.padding(.bottom,-10)
                        HStack{
//                            Image(mainAlbums.artistImage)
                            Image("다니엘 리-버버리")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                                Text("다니엘 리")
                              //  Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-10)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(fashionShowListBURBERRY, id: \.id) { album000 in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                selectedFashionShow =  album000
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album000)")
                                            }
                                        }) {
                                            AlbumList000(albums000: album000)
                                        }
                                    }
                                }
                          //  }
                            .padding(.leading)
                            .padding(.trailing)
                        }.padding(.bottom,30)
                        HStack{
                            Text("PRADA show")
                                .padding(.leading,10)
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }.padding(.bottom,-10)
                        .padding(.bottom,-10)
                        HStack{
//                            Image(mainAlbums.artistImage)
                           // Image("프라다-라프시몬스")
                            Image("User1")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                                Text("라프 시몬스")
                              //  Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-10)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(fashionShowListPRADA, id: \.id) { album000 in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                selectedFashionShow =  album000
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album000)")
                                            }
                                        }) {
                                            AlbumList000(albums000: album000)
                                        }
                                    }
                                }
                          //  }
                            .padding(.leading)
                            .padding(.trailing)
                        }
                    }
                    .padding(.bottom,200)
                }
            }.padding(.top,-30)
        }
    }
}


struct HomeViewW_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewW(mainAlbums: albums[0], mainPodcasts: albums[0], isledessts: albums[0],  selectedBrand: .constant(nil), selectedYoutube: .constant(nil))
    }
}


