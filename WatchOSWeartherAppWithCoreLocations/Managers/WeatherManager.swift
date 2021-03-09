//
//  WeatherManager.swift
//  WatchOSWeartherAppWithCoreLocations
//
//  Created by ramil on 09.03.2021.
//

import Foundation
import Combine

final class WeatherManager: ObservableObject {
    
    @Published var weatherResponse = WeatherResponse(forcast: [])
    
    func getWeather(for coord: WeatherCoordinates) {
        let url = URL(string: "https://api.lil.software/weather?latitude=\(coord.lat)&longtitude=\(coord.lon)")!
        NetworkManager<WeatherResponse>().fetch(for: url) { (result) in
            switch result {
            case .failure(let err):
                print(err.localizedDescription)
            case .success(let resp):
                self.weatherResponse = resp
            }
        }
    }
}
