//
//  WeatherService.swift
//  WeatherApp
//
//  Created by P10 on 24/09/24.
//
import Foundation
import Alamofire

@objc class WeatherService: NSObject {
    
    @objc func fetchWeather(forCity city: String, completion: @escaping (_ weatherData: [String: AnyObject]?, _ error: Error?) -> Void) {
        
        let apiKey = ""  // Replace with your OpenWeatherMap API key
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)"
        
        // Make a request using Alamofire
        AF.request(urlString).responseJSON { response in
            switch response.result {
            case .success(let value):
                if let weatherDict = value as? [String: AnyObject] {
                    completion(weatherDict, nil)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
