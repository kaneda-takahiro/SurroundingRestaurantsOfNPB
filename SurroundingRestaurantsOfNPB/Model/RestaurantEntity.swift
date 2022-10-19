//
//  RestaurantEntity.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/04.
//

import Foundation
import CoreLocation

struct Restaurant: Decodable {
    let results: Result            // 結果一覧
}

struct Result: Decodable {
    let apiVersion: String         // APIバージョン
    let resultsAvailable: Int      // クエリー条件にマッチする、検索結果の全件数
    let resultsReturned: String    // 検索結果の件数
    let resultsStart: Int          // 検索結果の開始位置
    let shop: [Shop]               // お店情報一覧
    
    enum CodingKeys: String, CodingKey {
        case apiVersion = "api_version"
        case resultsAvailable = "results_available"
        case resultsReturned = "results_returned"
        case resultsStart = "results_start"
        case shop
    }
}

struct Shop: Decodable {
    let id: String              // お店ID
    let name: String            // 掲載店名
    let logoImage: URL?         // ロゴ画像
    let nameKana: String?       // 掲載店名かな
    let address: String         // 住所
    let stationName: String?    // 最寄駅名
//    let largeServiceArea: Area? // 大サービスエリア
//    let serviceArea: Area?      // サービスエリア
//    let largeArea: Area?        // 大エリア
//    let middleArea: Area?       // 中エリア
    let smallArea: Area?        // 小エリア
    let genre: Genre            // お店ジャンル
    let subGenre: Genre?        // お店サブジャンル
    let photo: Photo            // 写真
   
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case logoImage = "logo_image"
        case nameKana = "name_kana"
        case address
        case stationName = "station_name"
//        case largeServiceArea = "large_service_area"
//        case serviceArea = "service_area"
//        case largeArea = "large_area"
//        case middleArea = "middle_area"
        case smallArea = "small_area"
        case genre
        case subGenre = "sub_genre"
        case photo
    }
}

struct Area: Decodable {
    let code: String          // エリアコード
    let name: String          // エリア名
}

struct Genre: Decodable {
    let code: String?         // お店ジャンルコード
    let name: String          // お店ジャンル名
//    let `catch`: String?      // お店ジャンルキャッチ
}

struct Photo: Decodable {

    let pc: ImageUrl          // PC向け
    let mobile: ImageUrl?     // スマートフォン向け
    
    struct ImageUrl: Decodable {
        let l: URL            // 店舗トップ写真(大）画像URL
        let m: URL?           // 店舗トップ写真(中）画像URL
        let s: URL            // 店舗トップ写真(小）画像URL
    }
}
