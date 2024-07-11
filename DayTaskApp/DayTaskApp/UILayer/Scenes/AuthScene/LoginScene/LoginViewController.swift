//
//  LoginViewController.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

enum LoginViewState {
    case signin
    case signup
    case resetpass
}

protocol LoginViewInput: AnyObject {

}

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    private var state: LoginViewState = .signin
    var viewOutput: LoginViewOutput!
    
    private var emailTextField = DTTextField(textFieldType: .email)
    private var nameTextField = DTTextField(textFieldType: .name)
    private var passwordTextField = DTTextField(textFieldType: .password)
    
    // MARK: - Initializers
    init(viewOutput: LoginViewOutput, state: LoginViewState) {
        self.viewOutput = viewOutput
        self.state = state
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = AppColors.darkBlue
        
        setupViews()
        setConstraints()
        
    }
    
    private func setupViews() {
        self.view.addSubview(emailTextField)
        self.view.addSubview(nameTextField)
        self.view.addSubview(passwordTextField)
    }
}

//MARK: - Constraints
private extension LoginViewController {
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            emailTextField.heightAnchor.constraint(equalToConstant: 58)
        ])
        
        NSLayoutConstraint.activate([
            nameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            nameTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 100),
            nameTextField.heightAnchor.constraint(equalToConstant: 58)
        ])


        NSLayoutConstraint.activate([
            passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            passwordTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 100),
            passwordTextField.heightAnchor.constraint(equalToConstant: 58)
        ])
    }
}


//MARK: - LoginViewInput methods
extension LoginViewController: LoginViewInput {
    
}
