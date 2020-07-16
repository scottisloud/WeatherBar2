//
//  WeatherAPIClient.swift
//  WeatherBar2
//
//  Created by Scott Lougheed on 2020/07/15.
//  Copyright © 2020 Scott Lougheed. All rights reserved.
//
// API Key: a2a064fca22344f9b71235252200707


import Foundation


class ApiClient {
    fileprivate let apiKey = "a2a064fca22344f9b71235252200707"
    
    var baseUrl: URL {
        return URL(string: "http://api.weatherapi.com/v1")!
    }
    
    var currentUrl: URL {
        return URL(string: "\(baseUrl)/current.json?key=\(apiKey)&q=")!
    }
    
    var forecastUrl: URL {
        return URL(string: "\(baseUrl)/forecast.json?key=\(apiKey)&q=")!
    }
    
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    typealias FetchCurrentWeatherCompletionHandler = (CurrentData?, Error?) -> Void
    typealias FetchForecastWeatherCompletionHandler = (ForecastData?, Error?) -> Void
    
    func fetchCurrentData(at location: String, units: Int, completionHandler completion: FetchCurrentWeatherCompletionHandler) {
        
    }
    
    func fetchForecastData(at location: String, units: Int, completionHandler completion: FetchForecastWeatherCompletionHandler) {
        
    }
    
    
}
