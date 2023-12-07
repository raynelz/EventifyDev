//
//  SignUpViewController.swift
//  EventifyDev
//
//  Created by imac on 6.12.23.
//

import UIKit

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
        setupData()
        setupBehavior()
    }
    @objc func SignUp() {
        print("you signed up")
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
        header.snp.makeConstraints { make in
            make.top.equalTo(view.snp_topMargin).offset(50)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
        }
        
        subheader.snp.makeConstraints { make in
            make.top.equalTo(header.snp_bottomMargin).offset(10)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(subheader.snp_bottomMargin).offset(30)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
            make.trailing.equalTo(view.snp_trailingMargin).inset(5)
            make.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp_bottomMargin).offset(20)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
            make.trailing.equalTo(view.snp_trailingMargin).inset(5)
            make.height.equalTo(50)
        }
        
        signupButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp_bottomMargin).offset(80)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
            make.trailing.equalTo(view.snp_trailingMargin).inset(5)
            make.height.equalTo(50)
        }
    }
}
//MARK: - Setup Appearance
private extension SignUpViewController {
    /// Функция для настройки цветов, шрифтов и всего UI
    func setupAppearance() {
        view.backgroundColor = .white
        
        header.textColor = .label
        header.font = UIFont(name: "SF Pro Rounded Semibold", size: 40)
        
        subheader.textColor = .secondaryLabel
        subheader.font = UIFont(name: "SF Pro Rounded Medium", size: 20)
        subheader.numberOfLines = 0
        
        emailTextField.borderStyle = .roundedRect
        
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        
        signupButton.layer.cornerRadius = 8
        signupButton.backgroundColor = UIColor(named: "BrandYellow")
        signupButton.setTitleColor(.black, for: .normal)
    }
}
//MARK: - Setup Data
private extension SignUpViewController {
    /// Функция для установки данных в UI
    func setupData() {
        header.text = "Sign Up"
        subheader.text = """
        Please, create a new account.
        It takes less than one minute.
        """
        
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
}