//
//  RenderLoopViewController.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 26/11/2022.
//

import UIKit

class RenderLoopViewController: UIViewController {
    lazy var renderLoopLoggedView: RenderLoopLoggedView = {
        let view = RenderLoopLoggedView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Render Loop"
        addConstraints()
    }
    
    private func addConstraints() {
        view.addSubview(renderLoopLoggedView)
        
        NSLayoutConstraint.activate([
            renderLoopLoggedView.topAnchor.constraint(equalTo: self.view.topAnchor),
            renderLoopLoggedView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            renderLoopLoggedView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            renderLoopLoggedView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }
}
