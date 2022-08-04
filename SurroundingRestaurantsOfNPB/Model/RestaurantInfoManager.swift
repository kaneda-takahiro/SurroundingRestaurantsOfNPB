//
//  RestaurantInfoManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/03.
//

import Foundation

struct RestaurantInfoManager {
    static func fetchTest(key: String) {
        let baseURL = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
        
        guard var urlComponents = URLComponents(string: baseURL) else { return }
        // ハヌリ 新宿東口ゴジラ通り店でtest
        urlComponents.queryItems = [
            URLQueryItem(name: "key", value: key),
            URLQueryItem(name: "name", value: "ハヌリ 新宿東口ゴジラ通り店"),
            URLQueryItem(name: "id", value: "J001147047"),
            URLQueryItem(name: "name_kana", value: "わぶたやきにく　さむぎょぷさる　くろげわぎゅう　はぬり　しんじゅくひがしぐちごじらどおりてん"),
            URLQueryItem(name: "address", value: "東京都新宿区歌舞伎町１－１８－９－９F"),

        ]
     
        guard let requestURL = urlComponents.url else { return }

        let task = URLSession.shared.dataTask(with: requestURL) { jsonData, respons, error in

            guard let jsonData = jsonData else { return }

            do {
                let entity =  try JSONDecoder().decode(RestaurantEntity.self, from: jsonData)
                print("😇",entity)
            } catch {
                print(error.localizedDescription)
            }

        }
        task.resume()
    }
    
}

