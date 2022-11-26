//
//  XibViewController.swift
//  auto-layout-deep-dive-swift
//
//  Created by james.jasenia on 26/11/2022.
//

import UIKit

class XibViewController: UIViewController {
    
    @IBOutlet private(set) var stackView: UIStackView!
    @IBOutlet private(set) var fileOwnerOutlet: FilesOwnerXibView! {
        didSet {
            fileOwnerOutlet.label.text = "Outlet - FileOwnerXibView"
            fileOwnerOutlet.backgroundColor = .yellow
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addFilesOwnerXibView()
        addCustomClassView()
    }
    
    private func addFilesOwnerXibView() {
        let filesOwnerView = FilesOwnerXibView(frame: .zero)
        filesOwnerView.translatesAutoresizingMaskIntoConstraints = false
        filesOwnerView.backgroundColor = .blue
        filesOwnerView.label.text = "Init - FilesOwnerXibView"
        stackView.addArrangedSubview(filesOwnerView)
    }
    
    private func addCustomClassView() {
        if let customClassView = loadNib() {
            customClassView.frame = CGRect(origin: .zero, size: .zero)
            customClassView.label.text = "Init - CustomClassXibView"
            customClassView.backgroundColor = .red
            stackView.addArrangedSubview(customClassView)
        }
    }
    
    private func loadNib() -> CustomClassXibView? {
        // It would be better to load this into a ResuableXibView.
        guard let customClassXibView = Bundle.main.loadNibNamed("CustomClassXibView", owner: nil)?.first as? CustomClassXibView else {
            fatalError()
        }
        return customClassXibView
    }
}
