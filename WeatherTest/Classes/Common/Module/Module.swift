//
//  Module.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

protocol ModuleOutput {
    
}

struct Module<Input, Output>: Presentable {
    var view: UIViewController
    var input: Input
    var output: Output
    
    func toPresent() -> UIViewController {
        return view
    }
}
