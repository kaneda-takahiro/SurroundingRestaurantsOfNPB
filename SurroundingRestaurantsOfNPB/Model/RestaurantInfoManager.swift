//
//  RestaurantInfoManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/03.
//

import Foundation

class RestaurantInfoManager {
    static func fetchRestaurant(completion: @escaping (Restaurant) -> Void ) {
        let baseURL = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/"

        guard var urlComponents = URLComponents(string: baseURL) else { return }
        urlComponents.queryItems = [
            URLQueryItem(name: "key", value: "206a377d449a9c59"),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "small_area", value: "X150"),
        ]
        
        guard let requestURL = urlComponents.url else { return }
        
        let task = URLSession.shared.dataTask(with: requestURL) { jsonData, _, error in
            print("レスポンス")
            if let error = error {
                print("💦",error.localizedDescription)
            }
            
           guard let jsonData = jsonData else { return }
            do {
                let entity = try JSONDecoder().decode(Restaurant.self, from: jsonData)
                completion(entity)
                print("😇",entity)
                
            } catch {
                print("💭",error.localizedDescription)
            }
        }
        print("リクエスト")
        task.resume()
    }
}
