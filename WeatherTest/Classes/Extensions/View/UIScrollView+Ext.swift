//
//  UIScrollView+Ext.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

extension UITableView {
    func scrollToBottom() {
        let lastSectionIndex = numberOfSections - 1
        if lastSectionIndex >= 0 {
            let lastRowIndex = numberOfRows(inSection: lastSectionIndex) - 1
            if lastRowIndex >= 0 {
                let pathToLastRow = IndexPath(row: lastRowIndex, section: lastSectionIndex)
                scrollToRow(at: pathToLastRow, at: .bottom, animated: false)
            }
        }
    }
}
