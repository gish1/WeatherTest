//
//  LaunchInstructor.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

enum LaunchInstructor {
    case main
    case auth
    case onboarding
    
    static func configure(tutorialWasShown: Bool, isAutorized: Bool) -> LaunchInstructor {
        switch (tutorialWasShown, isAutorized) {
        case (true, false), (false, false): return .auth
        case (false, true): return .onboarding
        case (true, true): return .main
        }
    }
}
