//
//  Presentable.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController {
        return self
    }
}
