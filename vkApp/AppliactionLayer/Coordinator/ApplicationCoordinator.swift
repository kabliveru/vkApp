//
//  ApplicationCoordinator.swift
//  vkApp
//
//  Created by Алексей Королев on 08.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//

import UIKit.UIViewController

final class ApplicationCoordinator: BaseCoordinator {
    
    private let window: UIWindow?
    private let rootController: UINavigationController
    private let coordinatorBuilder: CoordinatorBuilder
    private let moduleBuilder: ModuleBuilder
    
    init(window: UIWindow?) {
        self.window = window
        self.coordinatorBuilder = CoordinatorAssemblyBuilder()
        self.moduleBuilder = ModuleAssemblyBuilder()
        
        self.rootController = UINavigationController()
    }
    
    override func start() {
        setupWindow()
        showAuthorizationCoordinator()
    }
    
    private func setupWindow() {
        window?.rootViewController = rootController
        window?.makeKeyAndVisible()
    }
    
    private func showAuthorizationCoordinator() {
        let coordinator = coordinatorBuilder.authorizationCoordinatorBuild(rootController: rootController, moduleBuilder: moduleBuilder)
        
        coordinator.start()
    }
}
