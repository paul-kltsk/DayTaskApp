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
        
    }
}


//MARK: - LoginViewInput methods
extension LoginViewController: LoginViewInput {
    
}
