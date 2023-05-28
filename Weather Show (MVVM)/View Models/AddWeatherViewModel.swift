//
//  AddWeatherViewModel.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 28/05/2023.
//

import Foundation

class AddWeatherViewModel{
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> (Void)){
        let weatherUrl = Constants.Urls.urlForWeatherByCity(city: city)
        let resource = Resource<WeatherResponse>(url: weatherUrl) { data in
            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        WebService().load(resource: resource) { result in
            if let weatherResource = result{
                let vm = WeatherViewModel(weaher: weatherResource)
                completion(vm)
            }
        }
    }
}
