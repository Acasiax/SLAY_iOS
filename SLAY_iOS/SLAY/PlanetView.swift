//
//  PlanetView.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.
//

import SwiftUI

struct PlanetView: View {
    
    var planetData : PlanetModel
    var animation : Namespace.ID
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 6) {
            
            ZStack{
                Color(.clear)
              //  Color(bagData.image)
                    .cornerRadius(115)
                
               
                Image(planetData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width / 3, height: 140)
                   // .padding(20)
                    .matchedGeometryEffect(id: planetData.image, in: animation)
                Text(planetData.Entitle)
               // Text("CHANNEL")
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            
            HStack(spacing: 8){
                
                Spacer(minLength: 0)

                
                Text(planetData.title)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
               //     .lineLimit(3)
                
//                Text(planetData.price)
//                    .font(.title3)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.green)
//                    .padding(.vertical, 10)
//                    .padding(.horizontal,8)
//                    //.background(PlanetView.color)
//                    .clipShape(CustomCorner3(corner: [.topLeft,.topRight,.bottomLeft], size: 10))
            }
        }
        //행성간의 위아래 간격
        .padding(.top)
        .padding(.leading)
        .padding([.bottom,.trailing],8)
        //행성안에 네모 도형 색깔
        .background(planetData.color
           // .background(Color.blue.opacity(0.7)
                    //커스텀 도형
            .clipShape(CustomCorner3(corner: [.topLeft,.topRight,.bottomLeft], size: 25)).padding(.top,20).padding(.top,55)
        
        )
   }
}
