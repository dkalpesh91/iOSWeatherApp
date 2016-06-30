//
//  CityWeatherViewModel.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/30/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation

class CityWeatherViewModel {
    
//    lazy var sessionConfig : NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
//    lazy var session : NSURLSession = NSURLSession(configuration: self.sessionConfig)
//    
//    let mainUrl : NSURL
//    
//    init(url : NSURL) {
//        self.mainUrl = url
//    }
    
    
    func getWeatherForcast(cityName:String) {
        
        let session = NSURLSession.sharedSession()
        
        let weatherRequestURL = NSURL(string: "\(UrlConstant.OPENWEATHERMAP_TARGET_MAIN_URL)?APPID=\(UrlConstant.OPENWEATHERMAP_API_KEY)&q=\(cityName)")!
        
        // The data task retrieves the data.
        let dataTask = session.dataTaskWithURL(weatherRequestURL) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) in
            if let error = error {
                
                // We got some kind of error while trying to get data from the server.
                print("Error:\n\(error)")
            }
            else {
                _ = String(data: data!, encoding: NSUTF8StringEncoding)
            }
        }
        
        // The data task is set up...launch it!
        dataTask.resume()
        
        
    }
    
    
}

