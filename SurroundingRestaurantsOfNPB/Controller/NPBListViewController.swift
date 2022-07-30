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
    
    private let stadiumNamesListManager = StadiumNamesListManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension NPBListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stadiumNamesListManager.listCountNumber()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NPBListCell.className, for: indexPath) as? NPBListCell else { return UITableViewCell() }
        cell.setupStadiumName(name: stadiumNamesListManager.listName()[indexPath.row])
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
