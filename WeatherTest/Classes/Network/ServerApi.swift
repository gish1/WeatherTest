//
//  ServerApi.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import Foundation

 class ServerApi {
         
     private init() {}
     static let shared = ServerApi()
     
     func request(urlString: String, completeion: @escaping (Result<Data, Error>)-> Void) {
         guard let url = URL(string: urlString) else {
             return
         }
         
         URLSession.shared.dataTask(with: url) { data, response, error in
                 if let error = error {
                     completeion(.failure(error))
                     return
                 }
                 guard let data = data else {
                     return
                 }
                 completeion(.success(data))
         }.resume()
     }
 }
