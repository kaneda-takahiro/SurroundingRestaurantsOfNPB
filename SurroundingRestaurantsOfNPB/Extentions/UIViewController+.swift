//
//  UIViewController+.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/20.
//

import UIKit

extension UIViewController {
    ///　プッシュ遷移をする実装
    ///　- Parameter viewControllerName: 遷移先のViewControllerの名前
    func transion(to viewControllerName: String) {
        let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: viewControllerName)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
