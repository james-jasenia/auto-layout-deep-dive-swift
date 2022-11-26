//
//  CustomClassXibView.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 26/11/2022.
//

import UIKit

class CustomClassXibView: UIView {
    
    @IBOutlet var label: UILabel! {
        didSet {
            label.text = String(describing: Self.self)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        loadNib()
    }
    
    
    // You cannot call loadNibNamed() in the required init(coder:) in the the same custom class as defined in the Storyboard. It will result in a loop, loadNibNamed will call required init?(coder:) which will then call loadNibNamed etc. This must be called in a parent class.
    private func loadNib() {
        if let view = Bundle.main.loadNibNamed("CustomClassXibView", owner: nil)?.first as? UIView {
            view.frame = bounds
            addSubview(view)
        }
    }
}
