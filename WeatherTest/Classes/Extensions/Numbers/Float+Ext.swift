//
//  Float+Ext.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

extension Float {
    var сelsius: Int {
        return Int(self - 273)
    }
}
