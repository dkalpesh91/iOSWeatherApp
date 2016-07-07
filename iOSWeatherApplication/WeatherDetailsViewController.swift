//
//  WeatherDetailsViewController.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 7/2/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var weatherDetailsData : NSDictionary?
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var numberOfDaysWetherShowLabel: UILabel!
    @IBOutlet weak var countryCodeLable: UILabel!
    
    var weatherDetailsViewModel = WeatherDetailsViewModel()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("oh no \(weatherDetailsData!)")
        
        if weatherDetailsData != nil {
            
            weatherDetailsViewModel.getData(weatherDetailsData!)
            weatherDetailsViewModel.getCityDetails()
            cityNameLabel.text = weatherDetailsViewModel.cityName
            numberOfDaysWetherShowLabel.text = String(weatherDetailsViewModel.countDays!)
            countryCodeLable.text = weatherDetailsViewModel.countryCode
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    func tableView(tableView: UITableView!, viewForHeaderInSection section: Int) -> UIView! {
        
        
        let date  = UILabel(frame: CGRectMake(120,-5,300,44))
        let weatherDate  = UILabel(frame: CGRectMake(120,15,300,44))
        
        
        
        
        let DynamicView=UIView(frame: CGRectMake(0,0,0,0))
        DynamicView.backgroundColor = UIColor(red: 0.663, green: 0.761, blue: 0.761, alpha: 1)
        DynamicView.layer.borderWidth = 1
        DynamicView.layer.cornerRadius = 5
        
        if weatherDetailsData != nil {
        //    self.setDate()
          //  self.setDate((weatherDetailsData?.objectForKey("list")? as NSArray.[section].objectForKey("dt") as DataFormat)
        }
        
        let rupees = "(\u{20B9})"
        
        weatherDetailsViewModel.getListData(section)
            date.textColor = UIColor.orangeColor()
            date.text = "Weather Date"
            weatherDate.text = weatherDetailsViewModel.date
            
        

        
        date.backgroundColor = UIColor.clearColor()
        //label.shadowColor = UIColor.blackColor()
        date.shadowOffset = CGSizeMake(0,2);
        date.textColor = UIColor.whiteColor()
        DynamicView.addSubview(date)
        
        weatherDate.backgroundColor = UIColor.clearColor()
        weatherDate.shadowOffset = CGSizeMake(0,2);
        weatherDate.textColor = UIColor.whiteColor()
        DynamicView.addSubview(weatherDate)
        
        return DynamicView
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
       
        return weatherDetailsViewModel.countDays!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        weatherDetailsViewModel.getListData(indexPath.row)
        
        
        
        let simpleTableIdentifier : String  = "weatherDetailsCell"
        let cell = tableView .dequeueReusableCellWithIdentifier(simpleTableIdentifier, forIndexPath: indexPath) as! WeatherDetailsTableViewCell
     
//        let imageResponse = ConnectionHelper().getImage((productDetails.objectForKey("Product")!.objectForKey("ProductImage")) as! String)
//        cell.productImage.image = UIImage(data: imageResponse )
        
        
      //  @IBOutlet weak var wetherIcon: UIImageView!
        
        
        cell.cloudsLable.text = String(weatherDetailsViewModel.clouds!)
        cell.pressureLabel.text = String(weatherDetailsViewModel.pressure!)
        cell.speedLabel.text = String(weatherDetailsViewModel.speed!)
        cell.humidityLabel.text = String(weatherDetailsViewModel.humidity!)
        cell.rainLabel.text = String(weatherDetailsViewModel.rain!)
        cell.tempLabel.text = String(weatherDetailsViewModel.dayTemperature!)
        
        
        
        return cell
        
    }

//    func setDate(date:DataFormat) ->DataFormat {
//        
//    }
    

}
