//
//  CityWeatherDetailsModel.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/30/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation

struct CityWeatherDetailsModel {
    let city : CityDetailsModel?
    let numberOfDaysWeather : Int?
    let cooridinate :CoordModel?
    let wetherDetailsList : CityWeatherListModel?
    
    
    init(city:CityDetailsModel,numberOfDaysWeather:Int,coord:CoordModel,wetherDetailsList:CityWeatherListModel) {
        self.city = city
        self.numberOfDaysWeather = numberOfDaysWeather
        self.cooridinate = coord
        self.wetherDetailsList = wetherDetailsList
        
    }
}

struct CityDetailsModel {
    
    let cityName : String?
    let countryCode : String?
    
    init(cityName:String,countrycode:String){
        self.cityName = cityName
        self.countryCode = countrycode
    }
    
    
}

struct CityWeatherListModel {
    
    let clouds : Int?
    let pressure : Double?
    let speed : Double?
    let humidity : Int?
    let rain : Int?
    let temp : TemperatureModel?
    let weather : WeatherDescriptionModel?
    
    init(clouds:Int,pressure:Double,speed:Double,humidity:Int,rain:Int,temp:TemperatureModel,weather:WeatherDescriptionModel){
        self.clouds = clouds
        self.pressure = pressure
        self.speed = speed;
        self.humidity = humidity
        self.rain = rain
        self.temp = temp
        self.weather = weather
    }
    
    
    
}

struct TemperatureModel {
    
    let day : Double?
    let eve : Double?
    let max : Double?
    let min : Double?
    let morn : Double?
    let night : Double?
    
    init(day:Double,eve:Double,max:Double,min:Double,morn:Double,night:Double){
        self.day = day
        self.eve = eve
        self.max = max
        self.min = min
        self.morn = morn
        self.night = night
    }
    
}

struct CoordModel {
    let lat : Double?
    let lon : Double?
}


struct WeatherDescriptionModel {
    var description : String?
    var season: String?
    
    init(description:String,season:String) {
        self.description = description;
        self.season = description
    }
}