//
//  CoordinatorType.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

protocol CoordinatorType: AnyObject, Presentable {
    var container: Container {get}
    var router: RouterType {get}
    var completion: (() -> Void)? {get set}
    
    func start()
    func start(with option: DeepLinkOption?)
}
