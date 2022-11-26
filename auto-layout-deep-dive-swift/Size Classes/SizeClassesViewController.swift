//
//  SizeClassesViewController.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 23/11/2022.
//

import Foundation
import UIKit

class SizeClassesViewController: UIViewController {
    
    // Note: The painful part of size classes is that iPhone Max and Pro models have a regular width where as the base models have a compact width.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Size Classes"
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        print(#function)
    }
    
    
    
    
    
}
