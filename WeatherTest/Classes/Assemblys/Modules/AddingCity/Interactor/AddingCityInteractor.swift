//
//  AddingCityInteractor.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class AddingCityInteractor: AddingCityInteractorInput {
    var citiesArr = ["Moscow","Ufa","Ulyanovsk","London","Berlin","Tokio","Ekaterinburg","New york","Seoul","Beijing","Kazan","Sochi","Novosibirsk"]
    
    func searchFilter(text: String) -> [String] {
        var filteredArr = [String]()
        let emptyArr = [String]()
        filteredArr = text.isEmpty ? emptyArr : citiesArr.filter { $0.contains(text) }
        return filteredArr
    }
}

// MARK: Private
extension AddingCityInteractor {
    
}
