//
//  UrlConstant.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/30/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation

enum DataFormat : String {
    case JSON = "json"
    case XML = "xml"
}


// This class contain URL related data

struct  UrlConstant {
    static let OPENWEATHERMAP_TARGET_MAIN_URL = "http://api.openweathermap.org/data/2.5/forecast/daily"
    static let NO_OF_WEATHER_DAYS = 14
    static let OPENWEATHERMAP_API_KEY = "5d9c132c86bbbe2d1a18d8d556c9d491"
    static let MODE = DataFormat.JSON
    
    //http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=xml&units=metric&cnt=7&appid=b1b15e88fa797225412429c1c50c122a
    
}
