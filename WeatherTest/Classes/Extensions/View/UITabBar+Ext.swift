//
//  UITabBar+Ext.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

extension UITabBar {
    func setBackgroundImage(_ image: UIImage, yOffset: Int) {
        self.backgroundImage = UIImage()
        self.shadowImage = UIImage()
        let tabBarView = UIImageView(image: image)
        tabBarView.frame = CGRect(x: 0, y: yOffset, width: Int(tabBarView.bounds.width), height: Int(tabBarView.bounds.height))
        self.addSubview(tabBarView)
        self.sendSubviewToBack(tabBarView)
    }
}
