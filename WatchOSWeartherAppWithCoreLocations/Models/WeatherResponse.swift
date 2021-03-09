//
//  WeatherResponse.swift
//  WatchOSWeartherAppWithCoreLocations
//
//  Created by ramil on 09.03.2021.
//

import Foundation

struct WeatherResponse: Codable {
    var forcast: [WeatherModel]
}
