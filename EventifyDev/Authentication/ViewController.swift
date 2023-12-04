//
//  ViewController.swift
//  EventifyDev
//
//  Created by Захар Литвинчук on 04.12.2023.
//
import UIKit
import SnapKit

final class ViewController: UIViewController {
    private let testLabel: UILabel = {
        let label = UILabel()
        label.text = "Test Passed!"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(testLabel)
        setConstraints()
    }
}

extension ViewController {
    private func setConstraints() {
        // testLabel
        testLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
        }
    }
}
