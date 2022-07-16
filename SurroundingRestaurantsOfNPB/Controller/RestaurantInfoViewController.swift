//
//  RestaurantInfoViewController.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/14.
//

import UIKit

final class RestaurantInfoViewController: UITableViewController {
    
    
    @IBOutlet private weak var restaurantTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuprestaurantTableView()
    }
    private func setuprestaurantTableView() {
        let nib = UINib(nibName: RestaurantInfoCell.className, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: RestaurantInfoCell.className)
        tableView.register(nib, forCellReuseIdentifier: RestaurantInfoCell.className)
        restaurantTableView.dataSource = self
        restaurantTableView.delegate = self
    }
    
}
extension RestaurantInfoViewController{
    final func restaurantTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
        //15は仮置き
    }
}

extension RestaurantInfoViewController{
    final func restaurantTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RestaurantInfoCell.className, for: indexPath)
        return cell
    }
}
