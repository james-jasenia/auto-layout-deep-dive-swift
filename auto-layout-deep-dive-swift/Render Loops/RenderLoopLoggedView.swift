//
//  RenderLoopLoggedView.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 26/11/2022.
//

import UIKit

class RenderLoopLoggedView: UIView {
    
    lazy var anyLabel: UILabel = {
        let label = UILabel()
        label.text = "Render Loop"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(anyLabel)
        
        NSLayoutConstraint.activate([
            anyLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            anyLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        print(#function)
    }
    
    override func setNeedsUpdateConstraints() {
        super.setNeedsUpdateConstraints()
        print(#function)
    }
    
    override func updateConstraintsIfNeeded() {
        super.updateConstraintsIfNeeded()
        print(#function)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print(#function)
    }
    
    // Least expensive method to call. Views will update on the next view update cycle.
    override func setNeedsLayout() {
        super.setNeedsLayout()
        print(#function)
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        print(#function)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print(#function)
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
        print(#function)
    }
}
