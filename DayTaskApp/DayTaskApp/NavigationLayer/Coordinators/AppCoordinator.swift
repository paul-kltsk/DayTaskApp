//
//  AppCoordinator.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private let authFactory = AuthSceneFactory.self
    private let mainFactory = MainSceneFactory.self
    
    //Checking login, true? showMainFlow : showLoginFlow
    
    override func start() {
        print("App Coordinator start")
        showAuthFlow()
    }
    
    override func finish() {
        print("AppCoordinator finish")
        finishDelegate?.coordinatorFinish(childCoordinator: self)
    }
 
}


//MARK: - Navigation methods
private extension AppCoordinator {
    
    func showAuthFlow() {
        guard let navigationController = navigationController else { return }
        let loginCoordinator = authFactory.makeLoginFlow(finishDelegate: self, navigationController: navigationController, coordinator: self)
        loginCoordinator.start()
    }
    
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        let tabBarController = mainFactory.makeMainFlow(finishDelegate: self,coordinator: self)
        navigationController.pushViewController(tabBarController, animated: true)
    }
    
}

//MARK: - FinishDelegate
extension AppCoordinator: CoordinatorFinishDelegate {
    
    func coordinatorFinish(childCoordinator: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinator)
        
        switch childCoordinator.type {
        case .login:
            navigationController?.viewControllers.removeAll()
//            showMainFlow()
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
        
    }
    
    
}
