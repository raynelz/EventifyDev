//
//  SignUpViewController.swift
//  EventifyDev
//
//  Created by gleb on 6.12.23.
//

import UIKit
import SnapKit

final class SignUpViewController: UIViewController {

    private let header = UILabel()
    private let subheader = UILabel()

    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()

    private let signupButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupText()
        setupBehavior()
    }
}

//MARK: - Embed Views
private extension SignUpViewController {
    /// Функция для добавления вью-элементов в иерархию вью-элементов.
    func embedViews() {
        [
            header,
            subheader,
            emailTextField,
            passwordTextField,
            signupButton
        ].forEach { view.addSubview($0) }
    }
    
}

//MARK: - Setup Layout
private extension SignUpViewController {
    /// Функция расчёта для констрейнтов.
    func setupLayout() {
        header.snp.makeConstraints {
            $0.top.equalTo(view.snp_topMargin).offset(50)
            $0.leading.equalTo(view.snp_leadingMargin).offset(5)
        }
        
        subheader.snp.makeConstraints {
            $0.top.equalTo(header.snp_bottomMargin).offset(10)
            $0.leading.equalTo(view.snp_leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp_trailingMargin).inset(5)
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(subheader.snp_bottomMargin).offset(30)
            $0.leading.equalTo(view.snp_leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp_trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp_bottomMargin).offset(20)
            $0.leading.equalTo(view.snp_leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp_trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
        
        signupButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp_bottomMargin).offset(80)
            $0.leading.equalTo(view.snp_leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp_trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
    }
    
}

//MARK: - Setup Appearance
private extension SignUpViewController {
    /// Функция для настройки цветов, шрифтов и всего UI
    func setupAppearance() {
        view.backgroundColor = .white
        
        header.textColor = .label
        header.font = UIFont(name: S.Fonts.semibold, size: 40)
        
        subheader.textColor = .secondaryLabel
        subheader.font = UIFont(name: S.Fonts.medium, size: 20)
        subheader.numberOfLines = 0
        
        emailTextField.borderStyle = .roundedRect
        
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        
        signupButton.layer.cornerRadius = 8
        signupButton.backgroundColor = I.brandYellow.color
        signupButton.setTitleColor(.black, for: .normal)
    }
    
}

//MARK: - Setup Data
private extension SignUpViewController {
    /// Функция для установки данных в UI
    func setupText() {
        header.text = S.Signup.title
        subheader.text = "Please, create a new account. It takes less than one minute."
        
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"

        signupButton.setTitle("Sign Up", for: .normal)
    }
    
}

//MARK: - Setup Behavior
private extension SignUpViewController {
    /// Функция для настройки поведения, нажатия, делегаты и т.д.
    func setupBehavior() {
        signupButton.addTarget(self, action: #selector(SignUp), for: .touchUpInside)
    }
    
    @objc
    func SignUp() {
        print("you signed up")
    }
    
}
