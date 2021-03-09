//
//  WeatherModel.swift
//  WatchOSWeartherAppWithCoreLocations
//
//  Created by ramil on 09.03.2021.
//

import Foundation

struct WeatherModel: Codable {
    var name: String
    var temperature: Double
    var unit: String
    var description: String
    var conditions: String {
        switch description {
        case let str where str.lowercased().contains("clear"):
            return "sun.max"
        case let str where str.lowercased().contains("rain"):
            return "cloud.rain"
        case let str where str.lowercased().contains("sunny"):
            return "sun.max"
        case let str where str.lowercased().contains("clouds"):
            return "cloud"
        case let str where str.lowercased().contains("snow"):
            return "cloud.snow"
        case let str where str.lowercased().contains("fog"):
            return "cloud.fog"
        case let str where str.lowercased().contains("storm"):
            return "tropicalstorm"
        default:
            return "sun.max"
        }
    }
}
