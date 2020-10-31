//
//  List.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020.
//

import Foundation

struct List: Codable {

  enum CodingKeys: String, CodingKey {
    case main
    case dtTxt = "dt_txt"
    case weather
  }

  var main: Main?
  var dtTxt: String?
  var weather: [Weather]?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    main = try container.decodeIfPresent(Main.self, forKey: .main)
    dtTxt = try container.decodeIfPresent(String.self, forKey: .dtTxt)
    weather = try container.decodeIfPresent([Weather].self, forKey: .weather)
  }

}
