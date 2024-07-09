//
//  LoginCoordinator.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import Foundation

class LoginCoordinator: Coordinator {
    
    private let factory = AuthSceneFactory.self
    
    
    //MARK: - Methods
    override func start() {
        showAuthScene()
    }
    
    override func finish() {
        print("LoginCoordinator finish")
        finishDelegate?.coordinatorFinish(childCoordinator: self)
    }
    
}

//MARK: - Navigation
extension LoginCoordinator {
    
    func showAuthScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeAuthScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
