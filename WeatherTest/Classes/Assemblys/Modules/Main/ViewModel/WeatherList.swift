//
//  WeatherList.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct WeatherList {
    var temp: String
    var dtTxt: String
    
    init(with response: List) {
        self.dtTxt = "\(response.dtTxt?.stringDate ?? "")"
        self.temp = "\(response.main?.temp?.сelsius ?? 0)"
    }
}
