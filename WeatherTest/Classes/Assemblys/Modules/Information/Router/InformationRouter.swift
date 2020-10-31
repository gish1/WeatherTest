//
//  InformationRouter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class InformationRouter: BaseModuleRouter, InformationRouterProtocol {
    func popModule() {
        coordinator.router.popModule()
    }
}
