//
//  Coordinator.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

enum CoordinatorType {
    case app // main
    
    case login // login VC
    case signup // registration VC
    case resetPass // reset password VC
    
    case chat // chat VC
    case home // home VC
    case addTask // Add Task VC
    case calendar // Calendat VC
    case notification // Notification VC
}

protocol CoordinatorProtocol: AnyObject {
    
    var childCoordinators: [CoordinatorProtocol] { get set }
    var type: CoordinatorType { get }
    var navigationController: UINavigationController? { get set }
    var finishDelegate: CoordinatorFinishDelegate? { get set }
    
    func start()
    func finish()
    
}

extension CoordinatorProtocol {
    
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }
    
    func removeChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter{ $0 !== childCoordinator  }
    }
    
}

protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorFinish(childCoordinator: CoordinatorProtocol)
}

protocol TabBarCoordinator: AnyObject, CoordinatorProtocol {
    var tabBarController: UITabBarController? { get set }
}

class Coordinator: CoordinatorProtocol {
    
    var childCoordinators: [CoordinatorProtocol]
    var type: CoordinatorType
    var navigationController: UINavigationController?
    var finishDelegate: CoordinatorFinishDelegate?
    
    init(childCoordinators: [CoordinatorProtocol] = [CoordinatorProtocol](), type: CoordinatorType, navigationController: UINavigationController, finishDelegate: CoordinatorFinishDelegate? = nil) {
        self.childCoordinators = childCoordinators
        self.type = type
        self.navigationController = navigationController
        self.finishDelegate = finishDelegate
    }
    
    deinit {
        childCoordinators.forEach{ $0.finishDelegate = nil }
        childCoordinators.removeAll()
        print("Coordinator deinited \(type)")
    }
    
    func start() {
        print("Start coordinator")
    }
    
    func finish() {
        print("finish coordinator")
    }
    
    
}
