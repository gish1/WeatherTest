//
//  WeatherViewModel.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct WeatherViewModel {

    var cityName: String
    var temp: String
    var condition: String
    var list: [WeatherList]?
    
    init(with response: WeatherResponse) {
        self.cityName = "\(response.city?.name ?? "")"
        self.temp = "\(response.list?.first?.main?.temp?.сelsius ?? 0)"
        self.condition = "\(response.list?.first?.weather?.first?.main ?? "")"
        self.list = response.list?.map({ WeatherList(with: $0) })
    }
}
