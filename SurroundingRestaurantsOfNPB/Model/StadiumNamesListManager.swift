//
//  StadiumNamesListManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/27.
//

import Foundation

final class StadiumNamesListManager {
    private let list = ["ZOZOマリンスタジアム", "東京ドーム", "ベルーナドーム"]
    static let shared = StadiumNamesListManager()
    private init() {}
    
    func getList() -> [String] {
        list
    }
}

//slackテスト
