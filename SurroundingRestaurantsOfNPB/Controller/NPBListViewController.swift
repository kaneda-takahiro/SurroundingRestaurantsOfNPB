//
//  MNPBListViewController.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/07.
//

import UIKit

final class NPBListViewController: UIViewController {
    //       12球団の球場入れる場合はここで球場名を増やす
   let stadiumNamesList = ["ZOZOマリンスタジアム", "東京ドーム", "ベルーナドーム",]
 
    
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
        setupTableView()
    }
    
    
}
private func setupTableView() {
}

extension NPBListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return stadiumNamesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NPBListCell.className, for: indexPath) as? NPBListCell else{
            return UITableViewCell() }
        cell.textLabel?.text = self.stadiumNamesList[indexPath.row]
        return cell

    }
}

extension NPBListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }
}
