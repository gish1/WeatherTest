//
//  InformationAssembly.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

typealias InformationModule = Module<InformationModuleInput, InformationModuleOutput>

class InformationAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> InformationModule {
        // View
        let view = InformationViewController.controllerFromStoryboard("Information")
        
        // Interactor
        let interactor = InformationInteractor()
        
        // Router
        let router = InformationRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = InformationPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
