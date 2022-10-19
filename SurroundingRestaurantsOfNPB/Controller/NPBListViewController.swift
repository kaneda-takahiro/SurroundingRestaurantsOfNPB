//
//  NPBListViewController.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/07.
//

import UIKit

final class NPBListViewController: UIViewController {
    
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
        StadiumNamesListManager.shared.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NPBListCell.className, for: indexPath) as? NPBListCell else { return UITableViewCell() }
        let name = StadiumNamesListManager.shared.getList()[indexPath.row]
        cell.setupStadiumName(name: name)
        return cell
    }
}

extension NPBListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        transion(to: RestaurantInfoViewController.className)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        250
    }
}
