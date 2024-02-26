//
//  AlbumData.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//


import Foundation

struct Album: Identifiable{
    var id = UUID().uuidString
    var albumImage : String
    var albumShowTitle : String
    var artistImage : String
    var artistName : String
    var badge : Bool
    var year : String
    var date : String
    var songs : Int
    var time : String
    var copyright : String
    var youtubeID: String
    var youtubeURL: String
    //var 패션쇼 설명 이것도 배열에 연결해서 가져오는게 나을 듯
    var showDetail: String

}

//GUCCI Slay Show
//Burberry Slay Show
//Chanel Slay Show

var albums: [Album] = [
    Album( albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "구찌-사바토 데 사르노", artistName: "사바토 데 사르노", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: fashionShowListGucci[0].youtubeURL, showDetail:fashionShowListGucci[0].showDetail),

    Album(albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "구찌-사바토 데 사르노", artistName: "사바토 데 사르노", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListGucci[1].youtubeURL, showDetail: fashionShowListGucci[1].showDetail),


    Album(albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[2].showTitle, artistImage: "구찌-사바토 데 사르노", artistName: "사바토 데 사르노", badge: true, year: "2020 ", date: " 0311", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListGucci[2].youtubeURL, showDetail: fashionShowListGucci[2].showDetail)

]


var albums6COLOR: [Album] = [
    
    Album(albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "구찌-사바토 데 사르노", artistName: "사바토 데 사르노", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListGucci[0].youtubeURL, showDetail: fashionShowListGucci[0].showDetail),

    
    
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: fashionShowListChannel[0].youtubeURL, showDetail: fashionShowListChannel[0].showDetail),
    

    Album(albumImage: "YSL Slay Show", albumShowTitle: fashionShowListYSL[0].showTitle, artistImage: "버버리-리카르도티시", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0310", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListYSL[0].youtubeURL, showDetail: brands[2].fashionShows[0].showDetail),
    
    
    Album(albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListDior[0].youtubeURL, showDetail: brands[3].fashionShows[0].showDetail),
    
    Album(albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: fashionShowListPRADA[0].youtubeURL, showDetail: brands[4].fashionShows[0].showDetail),
    
    Album(albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListBURBERRY[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL:fashionShowListBURBERRY[0].youtubeURL, showDetail: fashionShowListBURBERRY[0].showDetail),
    

]

//샤넬 리스트
var albumsChanel: [Album] = [
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[0].showTitle, artistImage: "비르진이 비에르", artistName: "비르진이 비에르", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[1].fashionShows[0].youtubeID, youtubeURL:  fashionShowListChannel[0].youtubeURL, showDetail:  fashionShowListChannel[0].showDetail),

    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[1].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[1].youtubeID, youtubeURL: fashionShowListChannel[1].youtubeURL, showDetail: fashionShowListChannel[1].showDetail),
    
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[2].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[2].youtubeID, youtubeURL: fashionShowListChannel[2].youtubeURL, showDetail: fashionShowListChannel[2].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[3].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[3].youtubeID, youtubeURL: fashionShowListChannel[3].youtubeURL, showDetail: fashionShowListChannel[3].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[4].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[4].youtubeID, youtubeURL: fashionShowListChannel[4].youtubeURL, showDetail: fashionShowListChannel[4].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[5].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[5].youtubeID, youtubeURL: fashionShowListChannel[5].youtubeURL, showDetail: fashionShowListChannel[5].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[6].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[6].youtubeID, youtubeURL: fashionShowListChannel[6].youtubeURL, showDetail: fashionShowListChannel[6].showDetail),
    
    
    
]


// 디올 리스트

var albumsDior: [Album] = [
    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[0].showTitle, artistImage: "비르진이 비에르", artistName: "비르진이 비에르", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[0].youtubeID, youtubeURL:  fashionShowListDior[0].youtubeURL, showDetail:  fashionShowListDior[0].showDetail),

    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[1].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[1].youtubeID, youtubeURL: fashionShowListDior[1].youtubeURL, showDetail: fashionShowListDior[1].showDetail),
    
    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[2].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[2].youtubeID, youtubeURL: fashionShowListDior[2].youtubeURL, showDetail: fashionShowListDior[2].showDetail),
    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[3].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[3].youtubeID, youtubeURL: fashionShowListDior[3].youtubeURL, showDetail: fashionShowListDior[3].showDetail),
    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[4].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[4].youtubeID, youtubeURL: fashionShowListDior[4].youtubeURL, showDetail: fashionShowListDior[4].showDetail),
    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[5].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[5].youtubeID, youtubeURL: fashionShowListDior[5].youtubeURL, showDetail: fashionShowListDior[5].showDetail),
    Album( albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[6].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListDior[6].youtubeID, youtubeURL: fashionShowListDior[6].youtubeURL, showDetail: fashionShowListDior[6].showDetail),
]


//프라다 리스트
var albumsPrada: [Album] = [
    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[0].showTitle, artistImage: "비르진이 비에르", artistName: "비르진이 비에르", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[0].youtubeID, youtubeURL:  fashionShowListDior[0].youtubeURL, showDetail:  fashionShowListPRADA[0].showDetail),

    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[1].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[1].youtubeID, youtubeURL: fashionShowListPRADA[1].youtubeURL, showDetail: fashionShowListPRADA[1].showDetail),
    
    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[2].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[2].youtubeID, youtubeURL: fashionShowListPRADA[2].youtubeURL, showDetail: fashionShowListDior[2].showDetail),
    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[3].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[3].youtubeID, youtubeURL: fashionShowListPRADA[3].youtubeURL, showDetail: fashionShowListPRADA[3].showDetail),
    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[4].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[4].youtubeID, youtubeURL: fashionShowListPRADA[4].youtubeURL, showDetail: fashionShowListPRADA[4].showDetail),
    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[5].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[5].youtubeID, youtubeURL: fashionShowListPRADA[5].youtubeURL, showDetail: fashionShowListPRADA[5].showDetail),
    Album( albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[6].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[6].youtubeID, youtubeURL: fashionShowListPRADA[6].youtubeURL, showDetail: fashionShowListPRADA[6].showDetail),
]


//버버리 리스트
var albumsBurberry: [Album] = [
    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[0].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[0].youtubeID, youtubeURL:  fashionShowListDior[0].youtubeURL, showDetail:  fashionShowListPRADA[0].showDetail),

    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[1].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[1].youtubeID, youtubeURL: fashionShowListPRADA[1].youtubeURL, showDetail: fashionShowListPRADA[1].showDetail),
    
    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[2].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[2].youtubeID, youtubeURL: fashionShowListPRADA[2].youtubeURL, showDetail: fashionShowListDior[2].showDetail),
    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[3].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[3].youtubeID, youtubeURL: fashionShowListPRADA[3].youtubeURL, showDetail: fashionShowListPRADA[3].showDetail),
    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[4].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[4].youtubeID, youtubeURL: fashionShowListPRADA[4].youtubeURL, showDetail: fashionShowListPRADA[4].showDetail),
    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[5].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[5].youtubeID, youtubeURL: fashionShowListPRADA[5].youtubeURL, showDetail: fashionShowListPRADA[5].showDetail),
    Album( albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListPRADA[6].showTitle, artistImage: "다니엘 리-버버리", artistName: "다니엘 리", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListPRADA[6].youtubeID, youtubeURL: fashionShowListPRADA[6].youtubeURL, showDetail: fashionShowListPRADA[6].showDetail),
]
