//
//  BaseCoordinator.swift
//  vkApp
//
//  Created by Алексей Королев on 08.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//

import UIKit.UIViewController

class BaseCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    weak var parentCoordinator: Coordinator?
    
    func start() { }
    
    func addChildCoordinator(_ coordinator: Coordinator) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(_ coordinator: Coordinator?) {
        guard childCoordinators.isEmpty == false,
            let coordinator = coordinator else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
}
