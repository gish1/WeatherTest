//
//  City.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct City: Codable {

  enum CodingKeys: String, CodingKey {
    case name
  }

  var name: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decodeIfPresent(String.self, forKey: .name)
  }
}
