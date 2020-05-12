//
//  Presentable.swift
//  vkApp
//
//  Created by Алексей Королев on 13.05.2020.
//  Copyright © 2020 Алексей Королев. All rights reserved.
//

import UIKit.UIViewController

protocol Presentable: class {
    
    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
    
    func toPresent() -> UIViewController? {
        return self
    }
}
