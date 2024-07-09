//
//  AuthSceneFactory.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

struct AuthSceneFactory {
    
    static func makeLoginFlow(finishDelegate: CoordinatorFinishDelegate, navigationController: UINavigationController, coordinator: AppCoordinator) -> LoginCoordinator{
        let loginCoordinator = LoginCoordinator(type: .login, navigationController: navigationController, finishDelegate: finishDelegate)
        coordinator.addChildCoordinator(loginCoordinator)
        return loginCoordinator
    }
    
    static func makeAuthScene(coordinator: LoginCoordinator) -> LoginViewController {
        let presenter = LoginPresenter(coordinator: coordinator)
        let controller = LoginViewController(viewOutput: presenter, state: .signin)
        presenter.viewInput = controller
        return controller
    }
    
}
