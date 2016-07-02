//
//  ViewController.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 6/29/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate,CityWeatherResponseDelegate {
    
    
    @IBOutlet weak var cityTextField: UITextField!
    
    
    let cityWeatherViewModel = CityWeatherViewModel()
    
    let coordinate: (lat: Double, lon: Double) = (37.8267,-122.423)
    
    var weatherDetails : NSDictionary?
    
    
    var locationManager: CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.cityWeatherViewModel.delegate = self
        
        
        
    }
    
    @IBAction func submitButtonAction(sender: AnyObject) {
        
        self.retrieveWeatherForecast()
        
    }
    
    @IBAction func currentLocationButtonAction(sender: AnyObject) {
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func retrieveWeatherForecast() {
        
        
      cityWeatherViewModel.getWeatherDetailsForCity(cityTextField.text!)
        
        
        
    }

    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("error to calculating gps location");
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
         print("Ready with GPS Co-oridinate");
        let latestLocation: AnyObject = locations[locations.count - 1]
        print(String(format: "%.4f",latestLocation.coordinate.latitude))
        print(String(format: "%.4f",latestLocation.coordinate.longitude))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func setCityWeatherResponseDetails(response:NSDictionary,httpResponsCode:Int) {
        if httpResponsCode != UrlConstant.HTTP_SUCCESS {
            
            let alert = UIAlertController(title: "Error", message: "City Not Found", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        
        } else {
        print("HTTP Response correct");
        weatherDetails = response
        self.performSegueWithIdentifier("detailsScreen", sender: self)
        }
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailsScreen" {
            let detailsViewController = segue.destinationViewController as! WeatherDetailsViewController
            detailsViewController.weatherDetails = weatherDetails
        }
    }

}

