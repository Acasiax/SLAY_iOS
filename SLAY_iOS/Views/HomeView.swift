//
//  HomeView.swift
//  AnimatedApp
//
//  Created by Meng To on 2022-04-13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            
            ScrollView {
                HomeViewW(mainAlbums: albums[0], mainPodcasts: albums[0], isledessts: albums[0], selectedBrand: .constant(nil), selectedYoutube: .constant(nil))
              
            }
        }
    }
    
   
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
