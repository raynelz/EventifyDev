//
//  ForgotPasswordViewController.swift
//  EventifyDev
//
//  Created by Захар Литвинчук on 04.12.2023.
//
import UIKit
import SnapKit

final class ForgotPasswordViewController: UIViewController {
    
    //MARK: - UI
    private let header = UILabel()
    private let subheader = UILabel()
    
    private let emailTextField = UITextField()
    
    private let resetButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
    }
    
    //MARK: - Send Email
    @objc func sendEmail() {
        print("Email send!")
    }
}

//MARK: - Embed Views
private extension ForgotPasswordViewController {
    /// Функция для добавления вью-элементов в иерархию вью-элементов.
    func embedViews() {
        [
            header,
            subheader,
            emailTextField,
            resetButton
        ].forEach { view.addSubview($0) }
    }
}

//MARK: - Setup Layout
private extension ForgotPasswordViewController {
    /// Функция расчёта для констрейнтов.
    func setupLayout() {
        header.snp.makeConstraints {
            $0.top.equalTo(view.snp.topMargin).offset(50)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).offset(-5)
        }
        
        subheader.snp.makeConstraints {
            $0.top.equalTo(header.snp.bottomMargin).offset(10)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(subheader.snp.bottomMargin).offset(20)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
        
        resetButton.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp.bottomMargin).offset(30)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
            $0.height.equalTo(50)
        }
    }
}

//MARK: - Setup Appearance
private extension ForgotPasswordViewController {
    /// Функция для настройки цветов, шрифтов и всего UI
    func setupAppearance() {
        view.backgroundColor = .white
        
        header.textColor = .label
        header.font = .systemFont(ofSize: 40, weight: .semibold)
        
        subheader.textColor = .secondaryLabel
        subheader.font = .systemFont(ofSize: 20, weight: .medium)
        subheader.numberOfLines = 0
        
        emailTextField.borderStyle = .roundedRect
        
        resetButton.layer.cornerRadius = 8
        resetButton.backgroundColor = UIColor(named: "BrandYellow")
        resetButton.setTitleColor(.black, for: .normal)
    }
}

//MARK: - Setup Data
private extension ForgotPasswordViewController {
    /// Функция для установки данных в UI
    func setupData() {
        header.text = "Password reset"
        subheader.text = """
        Enter your email adress that you used
        to register. We’ll send you an email with
        link to reset your password.
        """
        
        emailTextField.placeholder = "Email"
        resetButton.setTitle("Send", for: .normal)
    }
}

//MARK: - Setup Behavior
private extension ForgotPasswordViewController {
    /// Функция для настройки поведения, нажатия, делегаты и т.д.
    func setupBehavior() {
        resetButton.addTarget(self, action: #selector(sendEmail), for: .touchUpInside)
    }
}

