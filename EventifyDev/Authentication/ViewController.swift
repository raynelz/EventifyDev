//
//  ViewController.swift
//  EventifyDev
//
//  Created by Захар Литвинчук on 04.12.2023.
//
import UIKit
import SnapKit

final class ViewController: UIViewController {
    private let testLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        embedViews()
        setupLayout()
        setupAppearance()
        setupText()
    }
}

//MARK: Embed Views
private extension ViewController {
    
    func embedViews() {
        view.addSubview(testLabel)
    }
    
}


//MARK: - Setup Layout
private extension ViewController {
    
    func setupLayout() {
        testLabel.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
        }
    }
    
}

//MARK: - Setup Appearance
private extension ViewController {
    
    func setupAppearance() {
        view.backgroundColor = .white
        
        testLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        testLabel.textAlignment = .center
        testLabel.numberOfLines = 0
    }
    
}

//MARK: Setup Text
private extension ViewController {
    
    func setupText() {
        testLabel.text = "Test Passed!"
    }
    
}
