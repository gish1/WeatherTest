//
//  BaseModuleRouter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

protocol BaseModuleRoutable {
    var coordinator: CoordinatorType! {set get}
    var container: Container {set get}
}

class BaseModuleRouter: BaseModuleRoutable {
    weak var coordinator: CoordinatorType!
    var container: Container
    
    init(coordinator: CoordinatorType) {
        self.coordinator = coordinator
        self.container = coordinator.container
    }
}

extension BaseModuleRouter: Presentable {
    func toPresent() -> UIViewController {
        return coordinator.toPresent()
    }
}
