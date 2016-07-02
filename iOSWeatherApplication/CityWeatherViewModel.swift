//
//  CityWeatherViewModel.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/30/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation


protocol CityWeatherResponseDelegate {
    
    func setCityWeatherResponseDetails(weatherDetails : NSDictionary,httpResponsCode: Int)
    
}

class CityWeatherViewModel {
    
    lazy var config: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
    lazy var session: NSURLSession = NSURLSession(configuration: self.config)
    
    var delegate : CityWeatherResponseDelegate?
    
    
    
    
    
    func getWeatherDetailsForCity(city:String){
        
        
        
        var jsonDictionary = NSDictionary()
        var httpResponseCode : Int?
        
        let url = NSURLComponents(string: UrlConstant.OPENWEATHERMAP_TARGET_MAIN_URL)!
        let city = NSURLQueryItem (name: "q", value: city);
        let mode = NSURLQueryItem (name: "mode", value: String(UrlConstant.MODE));
        let units = NSURLQueryItem (name: "units", value: UrlConstant.UNITS);
        let days = NSURLQueryItem (name: "cnt", value: String(UrlConstant.NO_OF_WEATHER_DAYS));
        let appKey = NSURLQueryItem (name: "appid", value: UrlConstant.OPENWEATHERMAP_API_KEY);
        url.queryItems = [city ,mode,units,days,appKey]
        
        if let combineUrl = url.URL {
        
        let request = NSURLRequest(URL: combineUrl)
        let dataTask = session.dataTaskWithRequest(request) {
            (let data, let response, let error) in
            
            // 1. Check HTTP response for successful GET request
            if let httpResponse = response as? NSHTTPURLResponse {
                switch httpResponse.statusCode {
                case 200:
                    // 2. Create JSON object with data
                    jsonDictionary = ((try? NSJSONSerialization.JSONObjectWithData(data!, options: [])) as? NSDictionary)!
                    httpResponseCode = jsonDictionary.objectForKey("cod")?.integerValue
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        if self.delegate != nil {
                            self.delegate?.setCityWeatherResponseDetails(jsonDictionary,httpResponsCode: httpResponseCode!)
                            
                        }

                    })
                    
                    
                    
                default:
                    print("GET request not successful. HTTP status code: \(httpResponse.statusCode)")
                }
            } else {
                print("Error: Not a valid HTTP response")
            }
        }
        
        dataTask.resume()
    }
    }

    
        
    }
    
    


