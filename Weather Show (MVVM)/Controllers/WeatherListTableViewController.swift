//
//  WeatherListTableViewController.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 26/05/2023.
//

import UIKit

class WeatherListTableViewController: UITableViewController, AddWeatherDelegate {
    
    private var weatherListViewModel = WeatherListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    
    @IBAction func addCityBtn(){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddCityVC") as? AddCityViewController{
            vc.delegate = self
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    func addWeatherSave(vm: WeatherViewModel) {
        weatherListViewModel.addWeatherVM(vm)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return weatherListViewModel.numberOfSection()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherListViewModel.numberOfRow()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wCell", for: indexPath) as! WeatherCell
        
        var singleWeather = weatherListViewModel.weatherInIndex(indexPath.row)
        
        cell.cityNameLabel.text = singleWeather.city
        cell.tempertureLabel.text = String(format: "%.0f°", singleWeather.temp)
        
        return cell
    }
    

}
