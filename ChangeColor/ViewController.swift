//
//  ViewController.swift
//  ChangeColor
//
//  Created by 18316409 on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var colorScreenView: UIView!
    
    @IBOutlet weak var redValueColorLabel: UILabel!
    @IBOutlet weak var greenValueColorLabel: UILabel!
    @IBOutlet weak var blueValueColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    // MARK: - Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorSlider.value = 1
        redColorSlider.minimumValue = 1
        redColorSlider.maximumValue = 255
        
        greenColorSlider.value = 1
        greenColorSlider.minimumValue = 1
        greenColorSlider.maximumValue = 255
        
        blueColorSlider.value = 1
        blueColorSlider.minimumValue = 1
        blueColorSlider.maximumValue = 255
        
    }


    @IBAction func redColorSliderAction() {
        redValueColorLabel.text = String(redColorSlider.value)
        let currenColor = String(redColorSlider.value)
        greenColorSlider.tintColor = UIColor.init(cgColor: currenColor)
    }
    
    
    @IBAction func greenColorSliderAction() {
        greenValueColorLabel.text = String(greenColorSlider.value)
    }
    
    @IBAction func blueColorSliderAction() {
        blueValueColorLabel.text = String(blueColorSlider.value)
    }
    

}

