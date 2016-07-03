//
//  WeatherDetailsViewController.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 7/2/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var weatherDetails : NSDictionary?
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var numberOfDaysWetherShowLabel: UILabel!
    @IBOutlet weak var countryCodeLable: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("oh no \(weatherDetails!)")

        // Do any additional setup after loading the view.
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
        let weatherDetails  = UILabel(frame: CGRectMake(120,15,300,44))
        
        
        
        
        let DynamicView=UIView(frame: CGRectMake(0,0,0,0))
        DynamicView.backgroundColor = UIColor(red: 0.663, green: 0.761, blue: 0.761, alpha: 1)
        DynamicView.layer.borderWidth = 1
        DynamicView.layer.cornerRadius = 5
        
        let rupees = "(\u{20B9})"
        
        if section==0{
            date.textColor = UIColor.orangeColor()
            date.text = "Weather Date"
            weatherDetails.text = "Weather Date disp"
            
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
        
        weatherDetails.backgroundColor = UIColor.clearColor()
        //label.shadowColor = UIColor.blackColor()
        weatherDetails.shadowOffset = CGSizeMake(0,2);
        weatherDetails.textColor = UIColor.whiteColor()
        DynamicView.addSubview(weatherDetails)
        
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

    
    

}
