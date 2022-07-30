//
//  StadiumNamesListManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/27.
//

import Foundation

final class StadiumNamesListManager {
    private init (){}
    
    private let list = ["ZOZOマリンスタジアム", "東京ドーム", "ベルーナドーム"]
    
    static let shared = StadiumNamesListManager()
    
    func listCountNumber() -> Int {
        list.count
    }
    
    func listName() -> [String] {
        list
    }
}

