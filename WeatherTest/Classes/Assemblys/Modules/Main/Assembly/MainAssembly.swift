//
//  MainAssembly.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

typealias MainModule = Module<MainModuleInput, MainModuleOutput>

class MainAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> MainModule {
        // View
        let view = MainViewController.controllerFromStoryboard("Main")
        
        // Interactor
        let interactor = MainInteractor()
        
        // Router
        let router = MainRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = MainPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
