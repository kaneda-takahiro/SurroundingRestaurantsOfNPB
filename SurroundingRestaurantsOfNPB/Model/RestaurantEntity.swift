//
//  RestaurantEntity.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/04.
//

import Foundation

//レスポンスで返ってきたJSONを保持する型
struct RestaurantEntity: Decodable{
    let api_version:Int
    let results_available:Int
    let results_returned:Int
    let results_start:Int
    let shop:Shop
//    let small_area:[Small_area]?

}

struct Shop:Decodable {
    let id:Int
    let name:String
    let logo_image:String
    let name_kana:String
    let address:String
    let station_name:String
    let ktai_coupon:Int
}

//struct Small_area:Decodable {
//    let code:Int
//    let name:String
//}
