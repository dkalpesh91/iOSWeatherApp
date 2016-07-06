//
//  WeatherDetailsViewModel.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 7/3/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation

class WeatherDetailsViewModel {
    
    
    var cityWeatherDetailsModel :CityWeatherDetailsModel?
    var cityWeatherListModel : CityWeatherListModel?
    
    var weatherDetailsData : NSDictionary!
    var index : Int!
    
    var listDetails : Array<CityWeatherListModel>!
    
    func getData(weatherDetailsInfo:NSDictionary) {
        
        weatherDetailsData = weatherDetailsInfo
        
        let city = weatherDetailsData.objectForKey("city") as! NSDictionary
        let countDays = weatherDetailsData.objectForKey("cnt")?.integerValue
        
        // city
        let cityName = city.objectForKey("name") as! String
        let countryCode = city.objectForKey("country") as! String
        let latitude = city.objectForKey("coord")?.objectForKey("lat")?.doubleValue
        let longitude = city.objectForKey("coord")?.objectForKey("lon")?.doubleValue
        
        
        let list = weatherDetailsData.objectForKey("list") as! NSArray
        
        for var i = 0; i<cityWeatherDetailsModel?.cityWeatherList.count ; i++ {
            //list
            
            
            
            
            let clouds = list.objectAtIndex(index).objectForKey("clouds")?.integerValue
            let humidity = list.objectAtIndex(index).objectForKey("humidity")?.integerValue
            let pressure = list.objectAtIndex(index).objectForKey("pressure")?.doubleValue
            let rain = list.objectAtIndex(index).objectForKey("rain")?.doubleValue
           // let speed = list.objectAtIndex(index).objectForKey("speed")?.doubleValue
            let date = list.objectAtIndex(index).objectForKey("dt") as! NSDate
            
            let tempertature = list.objectAtIndex(index).objectForKey("temp") as! NSDictionary
            let weather = list.objectAtIndex(index).objectForKey("weather") as! NSArray
            
            
            
            // cityWeatherListModel?.date = date
            
            let description = weather.objectAtIndex(index).objectForKey("description") as! String
            let season = weather.objectAtIndex(index).objectForKey("main") as! String
            let dayTemperature = tempertature.objectForKey("day")?.doubleValue
            
            cityWeatherListModel = CityWeatherListModel(clouds: clouds!, pressure: pressure!, humidity: humidity!, rain: rain!, date: date, temp: dayTemperature!, description: description, season: season)
            listDetails.append(cityWeatherListModel!)
        }

        
        cityWeatherDetailsModel = CityWeatherDetailsModel(cityName: cityName, countryCode: countryCode, lat: latitude!, lon:longitude!, numberOfWeatherDay: countDays!, cityWeatherList: listDetails)
        
        
        
        
        
        
    }
    
    func getListData(listIndex : Int){
        
        index = listIndex
        
        
        
        

    }
    
}