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
        // View
        colorScreenView.layer.cornerRadius = 10
        
        // Sliders
        redColorSlider.value = 0
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
        
        greenColorSlider.value = 0
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        
        blueColorSlider.value = 0
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
    }

    
     override func viewWillLayoutSubviews() {
        colorScreenView.backgroundColor = UIColor.init(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1)
    }

    
    // MARK: - Functions
    @IBAction func redColorSliderAction() {
        redValueColorLabel.text = (String(format: "%.2f", redColorSlider.value))
        redColorSlider.tintColor = .red
    }
    
    
    @IBAction func greenColorSliderAction() {
        greenValueColorLabel.text = (String(format: "%.2f", greenColorSlider.value))
        greenColorSlider.tintColor = .green
    }
    
    @IBAction func blueColorSliderAction() {
        blueValueColorLabel.text = (String(format: "%.2f", blueColorSlider.value))
        blueColorSlider.tintColor = .blue
    }
    

}

