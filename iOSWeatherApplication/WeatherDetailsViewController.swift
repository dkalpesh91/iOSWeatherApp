//
//  WeatherDetailsViewController.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 7/2/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController {
    
    var weatherDetails : NSDictionary?

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

}
