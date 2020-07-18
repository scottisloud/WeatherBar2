//
//  WeatherData.swift
//  WeatherBar2
//
//  Created by Scott Lougheed on 2020/07/15.
//  Copyright © 2020 Scott Lougheed. All rights reserved.
//

import Foundation
import UIKit
struct weather: Codable {
    let current: CurrentData
    let forecast: Forecast
}


struct CurrentData: Codable {
    
    let last_updated: String
    let is_day: Int
    let temp_c: Double
    let temp_f: Double
    let condition: Condition
    let wind_mph: Double
    let wind_kph: Double
    let wind_dir: String
    let gust_kph: Double
    let gust_mph: Double
    let precip_mm: Double
    let precip_in: Double
    let humidity: Int
    let cloud: Int
    let feelslike_c: Double
    let feelslike_f: Double
    let uv: Double
}

struct Condition: Codable {
    let text: String
    let icon: String
}

struct Forecast: Codable {
    let forecastDays: [ForecastDay]
}

struct ForecastDay: Codable {
    let date: String
    let dailyForecast: Day
}

struct Day: Codable {
    let maxtemp_c: Double
    let maxtemp_f: Double
    let mintemp_c: Double
    let mintemp_f: Double
    let avgtemp_c: Double
    let avftemp_f: Double
    let maxwind_kph: Double
    let maxwind_mph: Double
    let totalprecip_mm: Double
    let totalprecip_in: Double
    let avghumidity: Double
    let daily_will_it_rain: Int
    let daily_chance_of_rain: String
    let daily_will_it_snow: Int
    let daily_chance_of_snow: String
    let condition: Condition
    let uv: Double
}



//MARK: - EXTENSIONS

//TODO: finish these extensions! 
extension Condition {
    
    func getImage(from urlStub: String, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        // Figure out how to download the image
    }
    var iconFile: UIImage {
         
        let iconURL = "https:" + self.icon
        
        return UIImage(systemName: "heart")!
    }
}
