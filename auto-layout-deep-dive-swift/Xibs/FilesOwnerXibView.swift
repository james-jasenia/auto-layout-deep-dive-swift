//
//  FilesOwnerXibView.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 26/11/2022.
//

import UIKit

class FilesOwnerXibView: UIView {
    
    @IBOutlet private(set) var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    private func loadNib() {
        let nib = UINib(nibName: "FilesOwnerXibView", bundle: nil)
        // The important thing is to cast to the underlying type.
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            view.frame = bounds
            view.backgroundColor = .clear
            addSubview(view)
        }
    }
}

