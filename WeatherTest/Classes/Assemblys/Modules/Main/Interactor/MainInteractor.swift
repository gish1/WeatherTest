//
//  MainInteractor.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

class MainInteractor: MainInteractorInput {
    
    let network = ServerApi.shared
    let appid = "d8b68a1d5d52bb63e304f3c3ee145a46"
    
    func obtainInformation(nameCity: String, completion: @escaping (WeatherResponse) -> Void) {
        network.request(urlString: "https://api.openweathermap.org/data/2.5/forecast?q=\(nameCity)&appid=\(appid)") { result in
            switch result {
            case .success(let data):
                do {
                    let model = try JSONDecoder().decode(WeatherResponse.self, from: data)
                    completion(model)
                } catch let jsonError {
                    print("Failed to decode JSON", jsonError)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

// MARK: Private
extension MainInteractor {
    
}
