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
        header.snp.makeConstraints { make in
            make.top.equalTo(view.snp_topMargin).offset(50)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
        }
        
        subheader.snp.makeConstraints { make in
            make.top.equalTo(header.snp_bottomMargin).offset(10)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(subheader.snp_bottomMargin).offset(20)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
            make.trailing.equalTo(view.snp_trailingMargin).inset(5)
            make.height.equalTo(50)
        }
        
        resetButton.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp_bottomMargin).offset(30)
            make.leading.equalTo(view.snp_leadingMargin).offset(5)
            make.trailing.equalTo(view.snp_trailingMargin).inset(5)
            make.height.equalTo(50)
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

