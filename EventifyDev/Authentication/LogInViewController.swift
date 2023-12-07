//
//  ResetPasswordViewController.swift
//  Eventify
//
//  Created by Захар Литвинчук on 15.11.2023.
//

import UIKit
import SnapKit


final class LogInViewController: UIViewController {
    
    
    //MARK: - Declaring Components
    
    //emailTextField label
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    //login label
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0 // Разрешаем многострочный текст
        
        let attributedString = NSMutableAttributedString(
            string: "Log In\n",
            attributes: [.font: UIFont.systemFont(ofSize: 40, weight: .bold)]
        )
        
        attributedString.append(NSAttributedString(
            string: "Please, log into your account.\nIt takes less then one minute.",
            attributes: [.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.gray]
        ))
        
        label.attributedText = attributedString
        return label
    }()
    
    
    //ForgotPassword? Button
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        return button
    }()
    
    //LogIn Button
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .brandYellow
        button.layer.cornerRadius = 5
        return button
    }()
    
    //SignUp Button
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    
    //dontHaveAccountLabel
    private let dontHaveAnAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don’t have an account?"
        label.textColor = .gray
        return label
    }()
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
        setupButtons()
    }
}
    //MARK: - Add New Views

private extension LogInViewController {
    func setupViews() {
        [
            emailTextField,
            passwordTextField,
            loginLabel,
            forgotPasswordButton,
            loginButton,
            signUpButton,
            dontHaveAnAccountLabel
        ].forEach { view.addSubview($0) }
    }
}
    //MARK: - Constraints

private extension LogInViewController {
    func setupConstraints() {
        // Общий отступ для элементов
        let horizontalPadding = 10
        
        //emailTextField Constraints
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(20)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(horizontalPadding)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.height.equalTo(50)
            
        }
        
        //passwordTextField Constraints
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(horizontalPadding)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.height.equalTo(50)
            
        }

        //loginLabel Constraints
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(horizontalPadding)
        }

        //LogIn Button Constraints
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(horizontalPadding)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.height.equalTo(45)
            
        }

        //ForgotPasswordButton Constraints
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(10)
            make.right.equalTo(loginButton.snp.right)
        }

        //SignUpButton Constraints
        signUpButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-5)
            make.centerX.equalToSuperview()
        }

        //dontHaveAnAccountLabel Constraints
        dontHaveAnAccountLabel.snp.makeConstraints { make in
            make.bottom.equalTo(signUpButton.snp.topMargin).offset(0)
            make.centerX.equalToSuperview()

        }
    }
}
    //MARK: - ButtonsHighlited
private extension LogInViewController {
    func setupButtons() {
        setupButton(button: forgotPasswordButton)
        setupButton(button: loginButton)
        setupButton(button: signUpButton)
    }

    func setupButton(button: UIButton) {
        button.addTarget(self, action: #selector(handleButtonTouchDown(_:)), for: .touchDown)
        button.addTarget(self, action: #selector(handleButtonTouchUp(_:)), for: [.touchUpInside, .touchUpOutside, .touchCancel])
    }

    @objc func handleButtonTouchDown(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 0.7
        }
    }

    @objc func handleButtonTouchUp(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 1.0
        }
    }
}
