//
//  ViewController.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/29/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initial commit
        
        let cityWeather =  CityWeatherViewModel()
        cityWeather.getWeatherForcast("London");
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

