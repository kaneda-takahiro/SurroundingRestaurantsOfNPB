//
//  MNPBListViewController.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/07.
//

import UIKit

final class NPBListViewController: UIViewController {
    // 12球団の球場入れる場合はここで球場名を増やす
    private let stadiumNamesList = ["ZOZOマリンスタジアム", "東京ドーム", "ベルーナドーム"]
    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            let nib = UINib(nibName: NPBListCell.className, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: NPBListCell.className)
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // 画面の大きさ
        let width = UIScreen.main.bounds.size.width
        print("screen width : \(width)")
        let height = UIScreen.main.bounds.size.height
        print("screen height : \(height)")

        // 実際の画面の大きさ
        let native_width = UIScreen.main.nativeBounds.size.width
        print("native width : \(native_width)")
        let native_height = UIScreen.main.nativeBounds.size.height
        print("native width : \(native_height)")

        // 拡大率
        let scale = UIScreen.main.scale
        print("scale : \(scale)")
        let native_scale = UIScreen.main.nativeScale
        print("native scale : \(native_scale)")
    }
}
extension NPBListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stadiumNamesList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NPBListCell.className, for: indexPath) as? NPBListCell else { return UITableViewCell() }
        cell.setupStadiumName(name: stadiumNamesList[indexPath.row])
        return cell
    }

    
    }
extension NPBListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        250
    }
}
