//
//  Router.swift
//  vkApp
//
//  Created by Алексей Королев on 11.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//

protocol Router {
    
    func push(_ module: Presentable?)
    func push(_ module: Presentable?, animated: Bool)

    func setRootModule(_ module: Presentable?)
    func setRootModule(_ module: Presentable?, hideBar: Bool)
    
}
