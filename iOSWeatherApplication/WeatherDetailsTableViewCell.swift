//
//  WeatherDetailsTableViewCell.swift
//  iOSWeatherApplication
//
//  Created by Kingfisher on 7/3/16.
//  Copyright © 2016 dahlia. All rights reserved.
//

import UIKit

class WeatherDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var cloudsLable: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
