//
//  MainPresenter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class MainPresenter: BasePresenter<MainInteractorInput, MainRouterProtocol>, MainModuleOutput {
    
    // MARK: - Weak properties
    weak var view: MainViewInput?
}

// MARK: Private
extension MainPresenter {
    
}

// MARK: Module Input
extension MainPresenter: MainModuleInput {
    func setName(namesCity: [String]) {
        view?.set(namesCity: namesCity)
    }
}

// MARK: View Output
extension MainPresenter: MainViewOutput {

    func viewDidLoad() {
        view?.set(title: "Погода")
    }
    
    func handleInformationTap(model: WeatherViewModel) {
        router.showInformation(model: model)
    }
    
    func handleAddCityTap(names:[String]) {
        router.showAddCity(names: names)
    }
    
    func viewLoadInformation(nameCity: String) {
        interactor.obtainInformation(nameCity: nameCity) { [weak self] (model) in
            let viewModel = WeatherViewModel(with: model)
            self?.view?.set(model: viewModel)
        }
    }
}
