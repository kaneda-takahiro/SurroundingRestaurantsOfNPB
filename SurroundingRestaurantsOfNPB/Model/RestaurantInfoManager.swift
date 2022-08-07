//
//  RestaurantInfoManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/03.
//

import Foundation

struct RestaurantInfoManager {
    static func fetchRestaurant(key: String) {
        let baseURL = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/"

        guard var urlComponents = URLComponents(string: baseURL) else { return }
        // 町家和食 隠れ家個室居酒屋 茶屋 八重洲日本橋店でテスト
        urlComponents.queryItems = [
            URLQueryItem(name: "key", value: key),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "name", value: "町家和食 隠れ家個室居酒屋 茶屋 八重洲日本橋店"),
        ]
        
        guard let requestURL = urlComponents.url else { return }
        
        let task = URLSession.shared.dataTask(with: requestURL) { jsonData, respons, error in
            
            if let error = error {
                print("💦",error.localizedDescription)
            }
            
            guard let jsonData = jsonData else { return }
            let test = String(data: jsonData, encoding: .utf8)!
            print("📝",test)
            
            do {
                let entity = try JSONDecoder().decode(RestaurantEntity.self, from: jsonData)
                print("😇",entity)
                
            } catch {
                print("💭",error.localizedDescription)
            }
        }
        task.resume()
    }
}
