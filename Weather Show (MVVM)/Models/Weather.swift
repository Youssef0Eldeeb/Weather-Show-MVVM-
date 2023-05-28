//
//  Weather.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 27/05/2023.
//

import Foundation

struct WeatherResponse: Decodable{
    let main: Weather
    let name: String
}

struct Weather: Decodable{
    let temp: Double
    let humidity: Double
}
