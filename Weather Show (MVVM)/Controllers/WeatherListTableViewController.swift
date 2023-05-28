//
//  WeatherListTableViewController.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 26/05/2023.
//

import UIKit

class WeatherListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let resource = Resource<WeatherResponse>(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Cairo&appid=9a47cbf3f4130b18f6b83e36bae2caba&units=metric")!) { data in
            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        WebService().load(resource: resource) { weatherResponse in
            if let weatherResponse = weatherResponse{
                print(weatherResponse)
            }
        }
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wCell", for: indexPath) as! WeatherCell
        
        cell.cityNameLabel.text = "Cairo"
        cell.tempertureLabel.text = "20°"
        
        return cell
    }
    

}
