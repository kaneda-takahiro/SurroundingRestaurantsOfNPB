//
//  NSObject+.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/07/11.
//

import Foundation

extension NSObject {
    static var className: String {
        String(describing: self)
    }
}
