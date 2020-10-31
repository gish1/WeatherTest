//
//  NetRequests.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

protocol RequstModelSerealizable {
    func parameters() -> [String: Any]
    func body() -> Data
}

extension RequstModelSerealizable {
    func parameters() -> [String: Any] { return [:] }
    func body() -> Data { return Data() }
}
