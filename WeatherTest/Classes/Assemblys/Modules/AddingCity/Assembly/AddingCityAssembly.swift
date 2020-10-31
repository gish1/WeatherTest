//
//  AddingCityAssembly.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

typealias AddingCityModule = Module<AddingCityModuleInput, AddingCityModuleOutput>

class AddingCityAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> AddingCityModule {
        // View
        let view = AddingCityTableViewController.controllerFromStoryboard("AddingCity")
        
        // Interactor
        let interactor = AddingCityInteractor()
        
        // Router
        let router = AddingCityRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = AddingCityPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
