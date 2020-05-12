//
//  ModuleAssemblyBuilder.swift
//  vkApp
//
//  Created by Алексей Королев on 08.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//


class ModuleAssemblyBuilder: ModuleBuilder {
    
    public var presenter: LogonPresenterProtocol?
    public var dependency: Int?
    
    func addDependency() -> Self {
        return self
    }
    
    func logonModuleBuild() -> Presentable {
        let presenter = LogonPresenter()
        let view = LogonViewController()
        return view
    }
}
