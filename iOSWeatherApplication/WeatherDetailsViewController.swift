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
            
            weatherDetailsViewModel.getData(weatherDetailsData!,index: 0)
            
//           cityDetailsModel = CityDetailsModel(cityName: cityDetailsModel1.objectForKey("name") as! String , countrycode: weatherDetailsData!.objectForKey("cnt")!.integerValue, coord: <#T##Dictionary<String, CoordinateModel>#>)
//            print("hehhehehhehee \(cityDetailsModel1)")
            
            
//            cityWeatherDetailsModel = CityWeatherDetailsModel(city: ["city":cityDetailsModel!], numberOfDaysWeather: (weatherDetailsData!.objectForKey("cnt")!.integerValue), wetherDetailsList: (weatherDetailsData?.objectForKey("list"))! as! Array<CityWeatherListModel>)
//            print("this is count \(cityWeatherDetailsModel?.numberOfDaysWeather)")
//            print("this is city \(cityWeatherDetailsModel?.city)")
//            print("this is list \(cityWeatherDetailsModel?.wetherDetailsList)")
            
            
//        cityDetailsModel = CityDetailsModel(cityName: weatherDetailsData?.objectForKey("city")?.objectForKey("country") as! String, countrycode: weatherDetailsData?.objectForKey("city")?.objectForKey("country") as! String, coord: weatherDetailsData?.objectForKey("city")?.objectForKey("coord") as! CoordinateModel)
//            print("coordinate \(cityDetailsModel?.cooridinate?.lat)")
//
//        cityWeatherDetailsModel = CityWeatherDetailsModel(city: cityDetailsModel!, numberOfDaysWeather: weatherDetailsData!.objectForKey("cnt")!.integerValue, coord: <#T##CoordinateModel#>, wetherDetailsList: <#T##CityWeatherListModel#>)
//        cityNameLabel.text =
            
            
            
//        countryCodeLable.text = weatherDetailsData?.objectForKey("city")?.objectForKey("country") as? String
//        numberOfDaysWetherShowLabel.text = String(weatherDetailsData!.objectForKey("cnt")!.integerValue)
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
        
        if section==0{
            date.textColor = UIColor.orangeColor()
            date.text = "Weather Date"
            weatherDate.text = "Weather Date disp"
            
        }
//        if section==1{
//            label.textColor = UIColor.orangeColor()
//            label.text = "Previous Order"
//            date.text = "Order Date : \(String(mNoOfOrder1.objectForKey("OrderDate")!))"
//            ShippingAddress.text = "Shiping Address : \(mNoOfOrder1.objectForKey("ShippingAddress")!)"
//            price.text = "Total Amount \(rupees) : \(String(mNoOfOrder1.objectForKey("Amount")!.floatValue))"
//            
//            //label.text = mResponse .objectAtIndex(section) as? String
//        }
//        if section==2
//        {
//            label.textColor = UIColor.orangeColor()
//            label.text = "Previous Order"
//            date.text = "Order Date : \(String(mNoOfOrder1.objectForKey("OrderDate")!))"
//            ShippingAddress.text = "Shiping Address : \(mNoOfOrder1.objectForKey("ShippingAddress")!)"
//            price.text = "Total Amount \(rupees) : \(String(mNoOfOrder1.objectForKey("Amount")!.floatValue))"
//            // label.text = mResponse .objectAtIndex(section) as? String
//        }
        
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
        
//        var numOfSections = 0;
//        if (weatherDetails!.count == 0)
//        {
//            
//            let emptyLabel = UILabel(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
//            emptyLabel.text = "No Order History, go and buy product."
//            emptyLabel.textColor = UIColor.redColor()
//            orderDetailsTableView.backgroundView = emptyLabel
//            orderDetailsTableView.separatorStyle = UITableViewCellSeparatorStyle.None
//            numOfSections = 0;
//            
//            
//        }
//        else
//        {
//            numOfSections = weatherDetails!.count;
//            
//        }
        
        return 10;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        
        //return weatherDetails![section]!.count!
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("orderDetailsCell", forIndexPath: indexPath)
        
        // Configure the cell...
        
        
        
        
        let simpleTableIdentifier : String  = "weatherDetailsCell"
        let cell = tableView .dequeueReusableCellWithIdentifier(simpleTableIdentifier, forIndexPath: indexPath) as! WeatherDetailsTableViewCell
        
        
//        cell.productName.text = (productDetails.objectForKey("Product")!.objectForKey("ProductName")) as? String
//        cell.productCategoryLabel.text = textString
//        //cell.productDescLabel.text = (productDetails.objectForKey("Product")!.objectForKey("ProductDescription")) as! String
//        cell.priceLabel.text = price
//        let imageResponse = ConnectionHelper().getImage((productDetails.objectForKey("Product")!.objectForKey("ProductImage")) as! String)
//        cell.productImage.image = UIImage(data: imageResponse )
        return cell
        
    }

//    func setDate(date:DataFormat) ->DataFormat {
//        
//    }
    

}
