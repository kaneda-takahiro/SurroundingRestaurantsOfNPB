//
//  UIViewController+.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/20.
//

import UIKit

extension UIViewController {
    /// 引数使用 + extension UIViewControllerに書くことで、他のクラスでも使いまわせるようにしました
    /// - Parameter viewControllerName: RestaurantInfoViewContoller
    func transion(to viewControllerName: String) {
        let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: viewControllerName)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
