//
//  UIViewController+Ext.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 26/11/2022.
//

import UIKit

extension UIViewController {
    static func instantiate(from storyboard: Storyboard) -> Self {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("The UIViewController you are attempting to instantiate might no be the inital view controller or the storyboard name might be incorrect.")
        }
        return viewController
    }
}

enum Storyboard: String {
    case sizeClasses = "SizeClasses"
    case dynamicType = "DynamicType"
    case xibView = "XibView"
}
