//
//  StadiumNamesListManager.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/27.
//

import Foundation
import UIKit

private let stadiumNamesList = ["ZOZOマリンスタジアム", "東京ドーム", "ベルーナドーム"]

final class StadiumNamesListManager {
    
    let notificationCenter = NotificationCenter()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stadiumNamesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NPBListCell.className, for: indexPath) as? NPBListCell else { return UITableViewCell() }
        cell.setupStadiumName(name: stadiumNamesList[indexPath.row])
        return cell
    }
}
// modelにリストの情報書いたけど、vcはどう書いて良いかわからず足踏み中
