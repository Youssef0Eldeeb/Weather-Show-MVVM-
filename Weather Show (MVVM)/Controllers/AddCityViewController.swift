//
//  AddCityViewController.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 26/05/2023.
//

import UIKit

class AddCityViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveCityBtn(){
        
        if let city = cityTextField.text{
            let weatherUrl = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=9a47cbf3f4130b18f6b83e36bae2caba&units=metric")!
            let weatherResource = Resource(url: weatherUrl) { data in
                return data
            }
            WebService().load(resource: weatherResource) { result in
                
            }
        }
        
        
//        self.navigationController?.popViewController(animated: true)
    }

}
