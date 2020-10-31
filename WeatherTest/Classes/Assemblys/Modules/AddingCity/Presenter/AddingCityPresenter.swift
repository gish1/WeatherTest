//
//  AddingCityPresenter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class AddingCityPresenter: BasePresenter<AddingCityInteractorInput, AddingCityRouterProtocol>, AddingCityModuleOutput {
    
    // MARK: - Weak properties
    weak var view: AddingCityViewInput?
}

// MARK: Private
extension AddingCityPresenter {
    
}

// MARK: Module Input
extension AddingCityPresenter: AddingCityModuleInput {
    func setNames(names: [String]) {
        view?.set(names: names)
    }
}

// MARK: View Output
extension AddingCityPresenter: AddingCityViewOutput {
    func searchFilter(text: String) -> [String] {
        interactor.searchFilter(text: text)
    }
    
    func cancel(namesCity: [String]) {
        router.showMain(namesCity: namesCity)
    }
    
    func viewDidLoad() {
        view?.set(title: "AddingCity")
    }
    
    func cancel() {
        router.popModule()
    }
}
