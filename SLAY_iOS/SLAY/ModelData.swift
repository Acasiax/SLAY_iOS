//
//  ModelData.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/22.
//

import SwiftUI

struct BagModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
    var color : Color
    var info : String
    var URL : String
}

var bags = [
//백팩 나일론 화이트
    BagModel(image: "스몰 플랩 백", title: "스몰 플랩 백", price: "블랙", color: .pink, info: "CHANEL 2023/24 가을-겨울 레디-투-웨어 쇼 — CHANEL 쇼 룩51에서 선보인 스몰 플랩 백으로 페이턴트 카프스킨, 골드 메탈 재질로 되어 있으며 색상은 코랄핑크 입니다.", URL: "https://www.chanel.com/kr/fashion/p/AS4388B14299NR646/small-flap-bag-patent-calfskin-gold-tone-metal/"),
    BagModel(image: "이브닝 백", title: "이브닝 백", price: "핑크", color: .pink, info: "버지니 비아르가 직접 디자인한 가방으로 CHANEL 2023/24 가을-겨울 레디-투-웨어 쇼 — CHANEL 쇼 룩49에서 선보였습니다. 유광 빈티지 카프스킨, 골드 메탈로 이루어져 있으며 색상은 라이트 핑크 입니다.", URL: "https://www.chanel.com/kr/fashion/p/AS4445B14468NR644/evening-bag-shiny-aged-calfskin-gold-tone-metal/"),
    BagModel(image: "크럼플드 카프스킨, 골드 메탈", title: "크럼플드 카프스킨", price: "골드 메탈", color: .pink, info: "", URL: ""),
    BagModel(image: "프린티드 카프스킨, 실버메탈", title: "프린티드 카프스킨", price: "실버메탈", color: .pink, info: "", URL: ""),
    BagModel(image: "울 트위트 백팩 블랙", title: "울 트위트 백팩", price: "블랙", color: .pink, info: "", URL: ""),
    BagModel(image: "스몰 백팩 유광 그레인드 카프스킨 코랄핑크 ", title: "스몰 백팩 유광 그레인드", price: "코랄핑크", color: .pink, info: "", URL: ""),
    BagModel(image: "백팩 나일론 화이트", title: "백팩 나일론", price: "화이트", color: .pink, info: "", URL: ""),
    BagModel(image: "백팩 카프스킨 오렌지", title: "백팩 카프스킨", price: "오렌지", color: .pink, info: "", URL: ""),
    BagModel(image: "박스 백 트위드 시퀸 블랙", title: "박스 백 트위드 시퀸", price: "블랙", color: .pink, info: "CHANEL 2023/24 가을-겨울 레디-투-웨어 쇼 — CHANEL 쇼 룩33에서 선보였으며 재질은 트위드, 시퀸, 골드 메탈 입니다.", URL: ""),
    BagModel(image: "스몰 박스 백 울트위트 푸시아블랙", title: "스몰 박스 백 울트위트", price: "푸시아", color: .pink, info: "", URL: ""),
    BagModel(image: "스몰 박스 백 페이턴트 카프스킨 레드", title: "스몰 박스 백 페이턴트 카프스킨", price: "레드", color: .pink, info: "", URL: ""),
    BagModel(image: "스몰 박스 백 페이턴트 카프스킨 블랙", title: "스몰 박스 백 페이턴트 카프스킨", price: "블랙", color: .pink, info: "", URL: ""),
    
    
]

var jewelrys = [

BagModel(image: "SOUS LE SIGNE DU LION 브로치", title: "사자 브로치", price: "18k", color: .blue, info: "18K 옐로우 골드와 다이아몬드로 이루어진 브로치", URL: "https://www.chanel.com/kr/fine-jewelry/p/J11935/plume-de-chanel-ring/"),
BagModel(image: "PLUME 링", title: "PLUME 링", price: "18k", color: .pink, info: "18K 화이트 골드와 옐로우 골드, 다이아몬드로 이루어진 링", URL: ""),
BagModel(image: "ETERNAL N°5 링", title: "ETERNAL N°5 링", price: "18k", color: .pink, info: "", URL: ""),
BagModel(image: "jewelry4", title: "신라왕 반지", price: "$10만 원", color: .pink, info: "", URL: ""),
BagModel(image: "jewelry5", title: "백제왕 반지", price: "$10만 원", color: .pink, info: "", URL: ""),
BagModel(image: "jewelry6", title: "고구려 귀걸이", price: "$10만 원", color: .pink, info: "", URL: ""),
    
    
]

var scroll_Tabs = ["핸드백","쥬얼리","신발", "드레스", "화장품"]
