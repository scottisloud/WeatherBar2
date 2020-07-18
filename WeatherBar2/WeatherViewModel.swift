//
//  WeatherViewModel.swift
//  WeatherBar2
//
//  Created by Scott Lougheed on 2020/07/15.
//  Copyright © 2020 Scott Lougheed. All rights reserved.
//

import Foundation
import UIKit

struct currentViewModel {
    
    let tempC: String
    let tempF: String
    let summary: String //This is part of the Condition struct called TEXT
    let icon: UIImage //This is part of the Condition struct called Icon
    let windMph: String
    let windKph: String
    let windDirection: String
    let windGustMpH: String
    let windGustKph: String
    let precipmm: String
    let precipInches: String
    let humidity: String
    let cloudCover: String
    let feelsLikeC: String
    let feelsLikeF: String
    let uvIndex: String
    
    init(model: CurrentData) {
        
        let roundedTempC = Int(model.temp_c)
        let roundedTempF = Int(model.temp_f)
        
        self.tempC = "\(roundedTempC)º"
        self.tempF = "\(roundedTempF)º"
        self.windMph = "\(Int(model.wind_mph))"
        self.windKph = "\(Int(model.wind_kph))"
        self.windDirection = model.wind_dir
        self.windGustMpH = "\(Int(model.gust_mph))"
        self.windGustKph = "\(Int(model.gust_kph))"
        self.precipmm = "\(Int(model.precip_mm))"
        self.precipInches = "\(Int(model.precip_in))"
        self.humidity = "\(model.humidity)%"
        self.cloudCover = "\(model.cloud)%"
        self.feelsLikeC = "\(Int(model.feelslike_c))º"
        self.feelsLikeF = "\(Int(model.feelslike_f))º"
        self.uvIndex = "\(Int(model.uv))"
        
        self.summary = model.condition.text
        self.icon = UIImage(systemName: "add")!  //TODO: Write extension in WeatherData to extract image from URL.
        
    }
    
    
}


struct forecastViewModel {
    
}
