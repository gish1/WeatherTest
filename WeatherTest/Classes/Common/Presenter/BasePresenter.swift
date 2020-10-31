//
//  BasePresenter.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class BasePresenter<I, R> {
    let interactor: I
    let router: R
    
    init(interactor: I, router: R) {
        self.interactor = interactor
        self.router = router
    }
}
