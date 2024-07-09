//
//  MainSceneFactory.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

struct MainSceneFactory {
    
    
    // MARK: - Main flow
    
    static func makeMainFlow(finishDelegate: CoordinatorFinishDelegate, coordinator: AppCoordinator) -> UITabBarController {
        
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home",
                                                           image: UIImage(systemName: "house.fill"),
                                                           tag: 0)
        homeCoordinator.finishDelegate = finishDelegate
        homeCoordinator.start()
        
        let chatNavigationController = UINavigationController()
        let chatCoordinator = ChatCoordinator(type: .chat, navigationController: chatNavigationController)
        chatNavigationController.tabBarItem = UITabBarItem(title: "Chat",
                                                           image: UIImage(systemName: "list.bullet.clipboard.fill"),
                                                           tag: 1)
        chatCoordinator.finishDelegate = finishDelegate
        chatCoordinator.start()
        
        let addTaskNavigationController = UINavigationController()
        let addTaskCoordinator = AddTaskCoordinator(type: .addTask, navigationController: addTaskNavigationController)
        addTaskNavigationController.tabBarItem = UITabBarItem(title: nil,
                                                           image: UIImage(systemName: "list.dash"),
                                                           tag: 2)
        addTaskCoordinator.finishDelegate = finishDelegate
        addTaskCoordinator.start()
        
        let calendarNavigationController = UINavigationController()
        let calendarCoordinator = CalendarCoordinator(type: .calendar, navigationController: calendarNavigationController)
        calendarNavigationController.tabBarItem = UITabBarItem(title: "Profile",
                                                           image: UIImage(systemName: "person.fill"),
                                                           tag: 3)
        calendarCoordinator.finishDelegate = finishDelegate
        calendarCoordinator.start()
        
        let notificationNavigationController = UINavigationController()
        let notificationCoordinator = NotificationCoordinator(type: .notification, navigationController: notificationNavigationController)
        notificationNavigationController.tabBarItem = UITabBarItem(title: "Notification",
                                                                   image: UIImage(systemName: "list.dash"),
                                                                   tag: 4)
        
        coordinator.addChildCoordinator(homeCoordinator)
        coordinator.addChildCoordinator(chatCoordinator)
        coordinator.addChildCoordinator(addTaskCoordinator)
        coordinator.addChildCoordinator(calendarCoordinator)
        coordinator.addChildCoordinator(notificationCoordinator)
        
        let tabBarControllers = [homeNavigationController,
                                 chatNavigationController,
                                 addTaskNavigationController,
                                 calendarNavigationController,
                                 notificationNavigationController]
        
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        return tabBarController
    }
    
}
