//
//  RestaurantEntity.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/04.
//

import Foundation
//レスポンスで返ってきたJSONを保持する型
struct RestaurantEntity: Decodable{
//    let apiversion:String
//    let resultsavailable:Int
//    let resultsreturned:String
//    let resultsstart:Int
    let shop:[Shop]
}
//enum CodingKeys: String, CodingKey {
//    case apiVersion = "api_version"
//    case resultsAvailable = "results_available"
//    case resultsReturned = "results_returned"
//    case resultsStart = "results_start"
//    case shop
//}
//
struct Shop: Decodable {
    let id:String
    let name:String
    let logoimage:URL?
    let namekana:String?
    let address:String
    let stationname:String?
    let ktaicoupon:String?
}
enum CodingKeys2: String, CodingKey {
        case id
        case name
        case logoImage = "logo_image"
        case nameKana = "name_kana"
        case address
        case stationName = "station_name"
        case ktaiCoupon = "ktai_coupon"
}




//
//struct Area: Decodable {
//    let code: String
//    let name: String
//}
//
//struct Genre: Decodable {
//    let code: String?
//    let name: String
//}
//
//struct Urls: Decodable {
//    let sp: URL?
//}
//
//struct Photo: Decodable {
//
//    let pc: ImageUrl
//    let mobile: ImageUrl?
//}
//
//struct ImageUrl: Decodable {
//    let l: URL
//    let m: URL?
//    let s: URL
//}
