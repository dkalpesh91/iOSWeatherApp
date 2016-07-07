//
//  WeatherDetailsViewModel.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 7/3/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import Foundation

class WeatherDetailsViewModel {
    
    
    private var cityWeatherDetailsModel :CityWeatherDetailsModel?
    private var cityWeatherListModel : CityWeatherListModel?
    
    var weatherDetailsData : NSDictionary!
    var index : Int!
    
    private var listDetails = [CityWeatherListModel]()
    
    
    var cityName : String?
    var countryCode : String?
    var countDays : Int?
    var latitude : Double?
    var longitude : Double?
    
    var clouds : Int?
    var humidity : Int?
    var pressure : Double?
    var rain : Double?
    var speed : Double?
    var date : String?
    var description : String?
    var season : String?
    var dayTemperature : Double?
    
    
    
    
    
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
        
        for var i = 0; i<list.count ; i++ {
            //list
            
            var wetherListData = list[i]
            
            
            let clouds = wetherListData.objectForKey("clouds")?.integerValue ?? 0
            let humidity = wetherListData.objectForKey("humidity")?.integerValue ?? 0
            let pressure = wetherListData.objectForKey("pressure")?.doubleValue ?? 0.0
            let rain = wetherListData.objectForKey("rain")?.doubleValue ?? 0.0
            let speed = wetherListData.objectForKey("speed")?.doubleValue ?? 0.0
            let date = wetherListData.objectForKey("dt")?.integerValue ?? 0
            
            let tempertature = wetherListData.objectForKey("temp") as! NSDictionary
            let weather = wetherListData.objectForKey("weather") as! NSArray
            
            
            
            // cityWeatherListModel?.date = date
            
            let description = weather.objectAtIndex(0).objectForKey("description") as! String ?? "not available"
            let season = weather.objectAtIndex(0).objectForKey("main") as! String ?? "not available"
            let dayTemperature = tempertature.objectForKey("day")?.doubleValue ?? 0.0
            
            cityWeatherListModel = CityWeatherListModel(clouds: clouds, pressure: pressure, humidity: humidity, rain: rain, date: date, temp: dayTemperature, description: description, season: season,speed: speed)
            listDetails.append(cityWeatherListModel!)
        }

        
        cityWeatherDetailsModel = CityWeatherDetailsModel(cityName: cityName, countryCode: countryCode, lat: latitude!, lon:longitude!, numberOfWeatherDay: countDays!, cityWeatherList: listDetails)
        
        
        
        
        
        
    }
    
    func getCityDetails(){
        self.cityName = cityWeatherDetailsModel!.cityName
        self.countryCode = cityWeatherDetailsModel!.countryCode
        self.countDays = cityWeatherDetailsModel!.numberOfDaysWeather
        self.latitude =  cityWeatherDetailsModel!.lat
        self.longitude = cityWeatherDetailsModel!.lon
    }
    
    
    func getListData(listIndex : Int){
        
        index = listIndex
        let list = listDetails[index]
        
        self.clouds = list.clouds
        self.humidity = list.humidity
        self.pressure = list.pressure
        self.rain = list.rain
        self.speed = list.speed
        
        let dateNSdate = NSDate(timeIntervalSince1970: Double(list.date!))
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        print(dateFormatter.stringFromDate(dateNSdate))
        
        self.date = dateFormatter.stringFromDate(dateNSdate)
        
        self.description = list.description
        self.season = list.season
        self.dayTemperature = list.temp
        
        
        
        

    }
    
}

