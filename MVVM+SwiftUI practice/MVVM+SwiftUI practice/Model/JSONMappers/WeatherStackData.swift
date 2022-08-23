//
//  WeatherStackData.swift
//  MVVM+SwiftUI practice
//
//  Created by Maria Maximova on 19.08.2022.
//

import Foundation

struct WeatherStackContainer: Codable {
    var current: WeatherStackCurrent?
}

struct WeatherStackCurrent: Codable {
    let temperature: Int?
    let weather_descriptions: [String]?
}

struct WeatherStackCondition: Codable {
    var text: String
    var icon: String
}
