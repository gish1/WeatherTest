//
//  WeatherResponse.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct WeatherResponse: Codable {

  enum CodingKeys: String, CodingKey {
    case city
    case list
  }

  var city: City?
  var list: [List]?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    city = try container.decodeIfPresent(City.self, forKey: .city)
    list = try container.decodeIfPresent([List].self, forKey: .list)
  }
}
