//
//  ViewController.swift
//  TConverter
//
//  Created by Ivan Akulov on 13/02/2018.
//  Copyright © 2018 Ivan Akulov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrengeitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender:UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrengeit = Int(round((sender.value * 9 / 5) + 32))
        fahrengeitLabel.text = "\(temperatureFahrengeit)ºF"
    }
}

