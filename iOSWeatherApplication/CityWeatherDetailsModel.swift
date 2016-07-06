//
//  CityWeatherDetailsModel.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/30/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation

class CityWeatherDetailsModel {
    var cityName : String?
    var countryCode : String?
    
    var lat : Double?
    var lon : Double?
    
    var numberOfDaysWeather : Int?
    
    var cityWeatherList : [CityWeatherListModel]
    
    
    init(cityName:String,countryCode:String,lat:Double,lon:Double,numberOfWeatherDay:Int,cityWeatherList:[CityWeatherListModel]){
        
            self.cityName = cityName
            self.countryCode = countryCode
            self.lat = lat
            self.lon = lon
            self.numberOfDaysWeather = numberOfWeatherDay
        
            self.cityWeatherList = cityWeatherList
        
    
    }
}

class CityWeatherListModel {
    var clouds : Int?
    var pressure : Double?
    var speed : Double?
    var humidity : Int?
    var rain : Double?
    var date : NSDate?
    
    var temp : Double?
    
    var description : String?
    var season: String?
    
    init(clouds:Int,pressure:Double,humidity:Int,rain:Double,date:NSDate,temp:Double,description:String,season:String){
        self.clouds = clouds
        self.pressure = pressure
        self.humidity = humidity
        self.rain = rain
        self.date = date
        self.temp = temp
        self.description = description
        self.season = season
    }

}

