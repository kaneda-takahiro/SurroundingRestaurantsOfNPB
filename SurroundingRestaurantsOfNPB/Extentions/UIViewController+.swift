//
//  UIViewController+.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/20.
//

import UIKit

extension UIViewController {
   func transion(to viewControllerName:  String) {
         let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
         guard let vc = storyboard.instantiateViewController(identifier: viewControllerName) as? RestaurantInfoViewController else{
             return }
         self.navigationController?.pushViewController(vc, animated: true)
     }
}
