//
//  AddCityViewController.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 26/05/2023.
//

import UIKit

protocol AddWeatherDelegate{
    func addWeatherSave(vm: WeatherViewModel)
}

class AddCityViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    
    private var addWeatherVM = AddWeatherViewModel()
    var delegate: AddWeatherDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveCityBtn(){
        
        if let city = cityTextField.text{
            addWeatherVM.addWeather(for: city) { vm in
                self.delegate?.addWeatherSave(vm: vm)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

}
