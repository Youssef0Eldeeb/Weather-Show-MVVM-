//
//  WeatherListViewModel.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 28/05/2023.
//

import Foundation

class WeatherListViewModel{
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherVM(_ vm: WeatherViewModel){
        weatherViewModels.append(vm)
    }
    func numberOfSection() -> Int{
        return 1
    }
    func numberOfRow() -> Int{
        return weatherViewModels.count
    }
    func weatherInIndex(_ index: Int) -> WeatherViewModel{
        return weatherViewModels[index]
    }
}

class WeatherViewModel{
    let weaher: WeatherResponse
    init(weaher: WeatherResponse) {
        self.weaher = weaher
    }
    var city: String{
        return weaher.name
    }
    var temp: Double{
        return weaher.main.temp
    }
}
