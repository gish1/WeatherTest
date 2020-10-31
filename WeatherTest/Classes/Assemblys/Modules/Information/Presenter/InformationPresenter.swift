//
//  InformationPresenter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class InformationPresenter: BasePresenter<InformationInteractorInput, InformationRouterProtocol>, InformationModuleOutput {
    
    // MARK: - Weak properties
    weak var view: InformationViewInput?
}

// MARK: Private
extension InformationPresenter {
    
}

// MARK: Module Input
extension InformationPresenter: InformationModuleInput {
    func setModel(model: WeatherViewModel) {
        view?.set(model: model)
    }
}

// MARK: View Output
extension InformationPresenter: InformationViewOutput {
    func viewDidLoad() {
        view?.set(title: "Подробная информация")
    }
    
    func cancel() {
        router.popModule()
    }
}
