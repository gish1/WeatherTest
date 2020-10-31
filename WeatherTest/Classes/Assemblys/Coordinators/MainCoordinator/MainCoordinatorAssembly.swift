//
//  MainCoordinatorAssembly.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class MainCoordinatorAssembly: Assembly {
    func build(router: RouterType) -> MainCoordinatorType {
        let coordinator = MainCoordinator(container: container, router: router)
        return coordinator
    }
}
