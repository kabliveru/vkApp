//
//  CoordinatorBuilder.swift
//  vkApp
//
//  Created by Алексей Королев on 11.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//

import UIKit.UIViewController

protocol CoordinatorBuilder {
    
    func authorizationCoordinatorBuild(rootController: UINavigationController, moduleBuilder: ModuleBuilder) -> Coordinator
}
