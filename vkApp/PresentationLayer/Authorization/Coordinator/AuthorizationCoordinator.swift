//
//  AuthorizationCoordinator.swift
//  vkApp
//
//  Created by Алексей Королев on 11.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//

import UIKit

class AuthorizationCoordinator: BaseCoordinator {
    
    private let rootController: UINavigationController
    private let moduleBuilder: ModuleBuilder
    
    init(rootController: UINavigationController, moduleBuilder: ModuleBuilder) {
        self.rootController = rootController
        self.moduleBuilder = moduleBuilder
    }
    
    
    override func start() {
        showLogonModule()
    }
    
    private func showLogonModule() {
//        let logonModule = moduleBuilder.
        
    }
}
