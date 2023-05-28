//
//  Constants.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 28/05/2023.
//

import Foundation

struct Constants{
    struct Urls{
        static func urlForWeatherByCity(city: String) -> URL{
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=9a47cbf3f4130b18f6b83e36bae2caba&units=metric")!
        }
    }
}
