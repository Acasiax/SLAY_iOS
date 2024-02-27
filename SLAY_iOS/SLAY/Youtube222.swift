//
//  Youtube222.swift
//  Aurora
//
//  Created by 이윤지 on 2023/08/20.
//

import SwiftUI
import WebKit

struct YouTube222: View {
    @Environment(\.presentationMode) var presentationMode // 추가
    @Binding var selectedFashionShow: FashionShow!
    @State var selectedBrandShowList: BrandShowList!
    @Binding var selectedBrand: Brand!
    @Binding var selectedYoutube: FashionShow!
    //@Binding var seledctedAlbum : Album!
    //    //애미메이션 뷰 프러퍼티들
    @State var currentIndex: Int = 0
    @State var currentTab: String = "Films"
    //SnapCarousel 디테일뷰 프로퍼티들
    @State var detailLookpage: ChanelLookPage?
    @State var showLookDetailView: Bool = false
    @State var currentCardSize: CGSize = .zero
    @Namespace var animation3
    @Environment(\.colorScheme) var scheme
    
    
    var body: some View {
        
        NavigationView { // NavigationView로 감싸기
        //    ScrollView{
               
            ZStack(alignment: .top) {
                // 배경색
                
                Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)
                //👀
                BGView().preferredColorScheme(.dark)
                //  Color.clear.edgesIgnoringSafeArea(.all)
                VStack{
                    VStack {
                        
                        //                            if let selectedYoutube2 = seledctedAlbum?.youtubeID{
                        if let fashionShow = selectedFashionShow?.youtubeID {
                            
                            //VideoView22(videoID: selectedYoutube2, selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube, seledctedAlbum: $seledctedAlbum)
                            
                            VideoView22(videoID: selectedFashionShow.youtubeID, selectedFashionShow: $selectedFashionShow, selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube)
                            
                            
                        } else {
                            Text("YouTube ID의 주소를 알 수 없습니다.")
                                .foregroundColor(.yellow)
                        }
                        
                    }
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.28)
                    .cornerRadius(12)
                    .padding(.horizontal, 5)
                    
                    
                    
                    //🔴
                    ScrollView{
                        VStack{
                            
                            Text("소개")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            VStack{
                                ScrollView(.vertical){
                                    
                                    //  GeometryReader { geometry in
                                    if let selectedYoutube3 = selectedFashionShow {
                                        Text("\(selectedYoutube3.showDetail)")
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                            .padding(.top)
                                            .padding(.horizontal)
                                            .fixedSize(horizontal: false, vertical: true)
                                            .frame(minWidth: 340, maxHeight: selectedYoutube3.showDetail.count < 15 ? 50 : nil)
                                        
                                            .padding(.bottom,33)
                                        
                                        
                                        
                                    } else {
                                        Text("정보를 가져오지 못했어요ㅠㅜ")
                                            .foregroundColor(.white)
                                        // .padding(.top)
                                            .padding(.horizontal)
                                    }
                                }
                                
                                //   .frame(minWidth: 340,maxHeight: 170)
                                .fixedSize(horizontal: false, vertical: true)
                                .background(Color.purple.opacity(0.3)
                                    .cornerRadius(15))
                                
                            }
                            
                            VStack{
                                
                                //🔴옷 표지 이미지!!!!
                                
                                
                                //                                if let ha = selectedYoutube?.mainImages2N {
                                //                                    SnapCarousel(spacing: 20, trailingSpace: 180, index: $currentIndex, items: ha) { movie in
                                //                                        //  ForEach(selectedBrand.fashionShows.indices, id: \.self) {  movie in
                                //                                        GeometryReader{proxy in
                                //                                            let size = proxy.size
                                //
                                ////                                            Image(movie.artworkImage)
                                //                                            Image(movie.artworkImage)
                                //
                                //                                                .resizable()
                                //                                                .aspectRatio(contentMode: .fill)
                                //                                                .frame(width: size.width, height: size.height)
                                //                                                .cornerRadius(15)
                                //                                                .matchedGeometryEffect(id: movie.id, in: animation3)
                                //                                                .onTapGesture {
                                //                                                    currentCardSize = size
                                //
                                //                                                    detailLookpage = movie
                                //                                                    print("🔇\(movie.artworkImage)")
                                //                                                    withAnimation(.easeInOut){
                                //
                                //                                                        //   print("🔴아아아아 \(selectedYoutube)🔹")
                                //
                                //                                                        showLookDetailView = true
                                //                                                    }
                                //                                                }
                                //
                                //                                        }
                                //
                                //                                    }
                                //                                    //현재 사진은 살짝 더 위로 올라가게 할것임
                                //                                    //탭바랑 사진 사이의 높이 간격
                                //                                    .padding(.top,70)
                                //
                                //                                    //custom indicator
                                //                                    CustomIndicator()
                                //                        //여기 if let 괄호 허ㅏ나 지우기
                                //                                }
                                
                            }
                        }
                        .padding(.top)
                        .padding(.horizontal)
                    }
                }
            }
                .navigationBarTitle("SLAY", displayMode: .inline)
                // 타이틀 추가
                .navigationBarColor(backgroundColor: .clear, titleColor: .purple)
                
                //.foregroundColor(.white)
                .navigationBarBackButtonHidden(true) // 기본 뒤로 가기 버튼 숨기기
                .navigationBarItems(leading: backButton)
                // 커스텀 뒤로 가기 버튼 추가
           // }
            //전체 배경색
            //.background(Color.red)
            
        }
        
        .overlay{
            if let movie = detailLookpage, showLookDetailView{
                LookPageDetailView(movie: movie, showDetailView: $showLookDetailView, detailMovie: $detailLookpage, currentCardSize: $currentCardSize, animation: animation3)
            }
        }
    }
    
    //custom indicator 점 표시
    @ViewBuilder
    func CustomIndicator()->some View{
        HStack(spacing: 5){
          //  let ha = selectedYoutube!.mainImages2N
           
            ForEach(CHANEL2223DakarShow.indices,id: \.self){index in
                Circle()
                    .fill(currentIndex == index ? .blue : .gray.opacity(0.5))
                    .frame(width: currentIndex == index ? 10 : 6, height: currentIndex == index ? 10 : 6)
           
            }
            //.onTapGesture {
//                print("🀄️\(ha)")
//            }
            
        }
        
        .animation(.easeInOut, value: currentIndex)
        
    }
    
    //MARK: Blurred BG
    //배경화면
    @ViewBuilder
    func BGView()->some View{
        GeometryReader{proxy in
            let size = proxy.size
            
            TabView(selection: $currentIndex) {
                ForEach(CHANEL2223DakarShow.indices,id: \.self){index in
                    Image(CHANEL2223DakarShow[index].artworkImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height)
                        .clipped()
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentIndex)
            
            let color: Color = (scheme == .dark ? .black : .white)
            
            //custom gradient
            LinearGradient(colors: [
                .black,
                .clear,
                color.opacity(0.15),
                color.opacity(0.5),
                color.opacity(0.8),
                color,
                color
            ], startPoint: .top, endPoint: .bottom)
            
            //블러드 오버레이
            Rectangle()
                .fill(.ultraThinMaterial)
            
        }
        .ignoresSafeArea()
        
    }
    
    private var backButton: some View {
        Button(action: {
            withAnimation(.spring()){
                presentationMode.wrappedValue.dismiss()
            }
                // 뒤로 가기 버튼 눌렀을 때 동작
        }) {
            Image(systemName: "chevron.left") // 뒤로 가기 아이콘
                .foregroundColor(.white)
        }
    }
}

struct youtuve222_Previews: PreviewProvider {
    static var previews: some View {
        YouTube222( selectedFashionShow:.constant(nil), selectedBrand: .constant(nil), selectedYoutube: .constant(nil) )
    }
}




//navigationBarColor 모듈러
struct NavigationBarModifier2: ViewModifier {

    var backgroundColor: UIColor?
    var titleColor: UIColor?

    init(backgroundColor: UIColor?, titleColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .white]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {

    func navigationBarColor2(backgroundColor: UIColor?, titleColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }

}

struct VideoView22: UIViewRepresentable {
    let videoID: String
    @Binding var selectedFashionShow: FashionShow!
    @Binding var selectedBrand: Brand!
    @Binding var selectedYoutube: FashionShow!
  //  @Binding var seledctedAlbum : Album!
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
   
//        guard let youtubeURL = URL(string: "\(seledctedAlbum.youtubeURL)") else { return }
        guard let youtubeURL = URL(string: "\(selectedFashionShow.youtubeURL)") else { return }
        uiView.scrollView.isScrollEnabled = false
//🥶
        DispatchQueue.main.async {
     //   DispatchQueue.global(qos: .background).async {
            uiView.load(URLRequest(url: youtubeURL))
        }
    }
  
}


