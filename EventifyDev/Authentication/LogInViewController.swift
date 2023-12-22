//
//  ResetPasswordViewController.swift
//  Eventify
//
//  Created by Захар Литвинчук on 15.11.2023.
//

import UIKit
import SnapKit


final class LogInViewController: UIViewController {
    
    //MARK: - UI
    private let header = UILabel()
    private let subheader = UILabel()
    private let dontHaveAnAccountLabel = UILabel()
    
    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()
    
    private let forgotPasswordButton = UIButton()
    private let loginButton = UIButton()
    private let signUpButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
    }
}
//MARK: - Add New Views

private extension LogInViewController {
    func embedViews() {
        [
            header,
            subheader,
            emailTextField,
            passwordTextField,
            forgotPasswordButton,
            loginButton,
            signUpButton,
            dontHaveAnAccountLabel
        ].forEach { view.addSubview($0) }
    }
}
//MARK: - Constraints

private extension LogInViewController {
    func setupLayout() {
        header.snp.makeConstraints {
            $0.top.equalTo(view.snp.topMargin).offset(50)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
        }
        
        subheader.snp.makeConstraints {
            $0.top.equalTo(header.snp.bottomMargin).offset(10)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(subheader.snp.bottomMargin).offset(30)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
            $0.height.equalTo(50)
            
        }
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp.bottomMargin).offset(20)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
        
        
        forgotPasswordButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottomMargin).offset(15)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
        }
        
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(forgotPasswordButton.snp.bottom).offset(30)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
        
        
        dontHaveAnAccountLabel.snp.makeConstraints {
            $0.bottom.equalTo(view.snp.bottomMargin).inset(30)
            $0.centerX.equalTo(view.snp.centerX)
        }
        
        
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(dontHaveAnAccountLabel.snp.bottomMargin).offset(5)
            $0.centerX.equalTo(view.snp.centerX)
        }
        
    }
}

//MARK: - Setup Appearance

private extension LogInViewController {
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
        
        forgotPasswordButton.setTitleColor(.gray, for: .normal)
        
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.backgroundColor = .brandYellow
        loginButton.layer.cornerRadius = 8
        
        signUpButton.setTitleColor(.black, for: .normal)
        
        dontHaveAnAccountLabel.textColor = .gray
        dontHaveAnAccountLabel.font = UIFont(name: "SF Pro Rounded Regular", size: 20)
        
    }
}

//MARK: - setupData

private extension LogInViewController {
    func setupData() {
        header.text = "Log In"
        subheader.text = "Please, create a new account.\nIt takes less than one minute."
        
        loginButton.setTitle("Log In", for: .normal)
        
        forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
        
        emailTextField.placeholder = "Email"
        
        passwordTextField.placeholder = "Password"
        
        signUpButton.setTitle("Sign Up", for: .normal)
        
        dontHaveAnAccountLabel.text = "Don’t have an account?"
    }
}

//MARK: - Setup Behavior

private extension LogInViewController {
    /// Функция для настройки поведения, нажатия, делегаты и т.д.
    func setupBehavior() {
        print("OK")
    }
    
    
}

//MARK: - Hot Reload
#if DEBUG
extension LogInViewController {
    @objc func injected() {
        viewDidLoad()
    }
}
#endif
