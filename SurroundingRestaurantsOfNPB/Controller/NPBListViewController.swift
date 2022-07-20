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
            tableView.separatorColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    func transion(viewControllerName: String){
        let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: viewControllerName) as? RestaurantInfoViewController else{
            return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension NPBListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.transion(viewControllerName: "RestaurantInfoViewController")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        250
    }
}
