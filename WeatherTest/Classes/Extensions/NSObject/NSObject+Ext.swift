//
//  NSObject+Ext.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
