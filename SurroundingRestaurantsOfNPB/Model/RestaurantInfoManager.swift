//
//  RestaurantInfoManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/03.
//

import Foundation

struct RestaurantInfoManager {
    static func fetchRestaurant(completion: @escaping () -> Void ) {
        let baseURL = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/"

        guard var urlComponents = URLComponents(string: baseURL) else { return }
        // 町家和食 隠れ家個室居酒屋 茶屋 八重洲日本橋店でテスト
        urlComponents.queryItems = [
            URLQueryItem(name: "key", value: "206a377d449a9c59"),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "name", value: "町家和食 隠れ家個室居酒屋 茶屋 八重洲日本橋店"),
        ]
        
        guard let requestURL = urlComponents.url else { return }
        
        let task = URLSession.shared.dataTask(with: requestURL) { jsonData, _, error in
            
            if let error = error {
                print("💦",error.localizedDescription)
            }
            
           guard let jsonData = jsonData else { return }
            do {
                let entity = try JSONDecoder().decode(Restaurant.self, from: jsonData)
                completion()
                print("😇",entity)
                
            } catch {
                print("💭",error.localizedDescription)
            }
        }
        task.resume()
    }
}
