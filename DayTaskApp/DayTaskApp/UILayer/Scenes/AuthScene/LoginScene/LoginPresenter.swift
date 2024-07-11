//
//  LoginPresenter.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

protocol LoginViewOutput: AnyObject {
    
}


class LoginPresenter {
    
    private var coordinator: LoginCoordinator?
    weak var viewInput: LoginViewInput?
    
    init(coordinator: LoginCoordinator? = nil, viewInput: LoginViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
    
}

//MARK: - LoginViewOutput protocol
extension LoginPresenter: LoginViewOutput {
    
}
