//
//  RestaurantInfoViewController.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/14.
//

import UIKit

final class RestaurantInfoViewController: UIViewController {
    var restaurant: Restaurant? {
        didSet {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.restaurantTableView.reloadData()
            }
        }
    }
  
    @IBOutlet private weak var restaurantTableView: UITableView! {
        didSet {
            let nib = UINib(nibName: RestaurantInfoCell.className, bundle: nil)
            restaurantTableView.register(nib, forCellReuseIdentifier: RestaurantInfoCell.className)
            restaurantTableView.dataSource = self
            restaurantTableView.separatorColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Thread.current.isMainThread",Thread.current.isMainThread)
        RestaurantInfoManager.fetchRestaurant { restaurant in
            self.restaurant = restaurant
        }
    }
}

extension RestaurantInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let resultsReturned = restaurant?.results.resultsReturned
        guard let resultsReturned = resultsReturned else { return 0 }
        guard let resultsReturnedCell = Int(resultsReturned) else { return 0 }
        return resultsReturnedCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = restaurantTableView.dequeueReusableCell(withIdentifier: RestaurantInfoCell.className, for: indexPath) as? RestaurantInfoCell else { return UITableViewCell() }
        guard let restaurant = restaurant else { return cell }
        cell.setNameLabel(entity: restaurant)
        cell.setGenreLabel(entity: restaurant)
        cell.setThumbnailImageView(entity: restaurant)
        return cell
    }
}

//変数を作って、viewDidLoad下とcellForRowAt間でのデータの受け渡しをできるようにしたい
//「RestaurantInfoCell」のインスタンス化を2回してるからcellが違うものになってる
//cellForRowAt内でsetNameLabel（view)にentityを反映させたい

//（entity：）の中身の型がRestaurant。varで定義したcellはRestaurant?
//cellをアンラップして使えるようにしたい
//guard文でcellを書くと、cellForRowAt内のcellのことを指してしまう
//他のアンラップのやり方でやるのか？
