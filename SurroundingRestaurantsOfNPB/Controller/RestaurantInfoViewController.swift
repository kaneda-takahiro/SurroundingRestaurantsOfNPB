//
//  RestaurantInfoViewController.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/14.
//

import UIKit

final class RestaurantInfoViewController: UIViewController {
    
    @IBOutlet private weak var restaurantTableView: UITableView! {
        didSet {
            let nib = UINib(nibName: RestaurantInfoCell.className, bundle: nil)
            restaurantTableView.register(nib, forCellReuseIdentifier: RestaurantInfoCell.className)
            restaurantTableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension RestaurantInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = restaurantTableView.dequeueReusableCell(withIdentifier: RestaurantInfoCell.className, for: indexPath) as? RestaurantInfoCell else { return UITableViewCell() }
        return cell
    }
}
