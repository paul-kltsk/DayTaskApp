//
//  AppCoordinator.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    //Checking login, true? showMainFlow : showLoginFlow
    
    override func start() {
        print("App Coordinator start")
    }
    
    override func finish() {
        print("AppCoordinator finish")
        finishDelegate?.coordinatorFinish(childCoordinator: self)
    }
 
}
