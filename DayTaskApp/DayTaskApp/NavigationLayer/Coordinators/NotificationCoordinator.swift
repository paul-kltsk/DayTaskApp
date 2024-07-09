//
//  NotificationCoordinator.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import Foundation

class NotificationCoordinator: Coordinator {
    //MARK: - Methods
    override func start() {
        print("HomeCoordinator Start")
    }
    
    override func finish() {
        print("LoginCoordinator finish")
        finishDelegate?.coordinatorFinish(childCoordinator: self)
    }
    
}
