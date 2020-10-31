//
//  Main.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct Main: Codable {

  enum CodingKeys: String, CodingKey {
    case temp
    case feelsLike = "feels_like"

  }

  var temp: Float?
  var feelsLike: Float?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    temp = try container.decodeIfPresent(Float.self, forKey: .temp)
    feelsLike = try container.decodeIfPresent(Float.self, forKey: .feelsLike)
  }
}
