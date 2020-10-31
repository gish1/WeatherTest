//
//  Weather.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct Weather: Codable {

  enum CodingKeys: String, CodingKey {
    case descriptionValue = "description"
    case main
  }

  var descriptionValue: String?
  var main: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    main = try container.decodeIfPresent(String.self, forKey: .main)
  }
}
