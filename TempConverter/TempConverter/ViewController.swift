//
//  ViewController.swift
//  TempConverter
//
//  Created by Roman Korobskoy on 10.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var fLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureC = Int(round(sender.value))
        cLabel.text = "\(temperatureC)ºC"
        //
        let temperatureF = Int(round((sender.value*9/5) + 32))
        fLabel.text = "\(temperatureF)ºF"
    }
}

