//
//  AppComposer.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 23/11/2022.
//

import Foundation
import UIKit

struct AppComposer {
    static func composeRootViewController() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        let rootViewControllers = [
            DynamicTypeViewController.instantiate(from: .dynamicType),
            SizeClassesViewController.instantiate(from: .sizeClasses),
            RenderLoopViewController(),
            XibViewController.instantiate(from: .xibView)
        ]
        
        tabBarController.viewControllers = rootViewControllers
        
        return tabBarController
    }
}
