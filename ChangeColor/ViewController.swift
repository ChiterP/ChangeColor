//
//  ViewController.swift
//  ChangeColor
//
//  Created by 18316409 on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var colorScreenView: UIView!
    
    @IBOutlet weak var redValueColorLabel: UILabel!
    @IBOutlet weak var greenValueColorLabel: UILabel!
    @IBOutlet weak var blueValueColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // View
        colorScreenView.layer.cornerRadius = 10
        
        // Sliders
        redColorSlider.value = 0
        redColorSlider.tintColor = .red
        greenColorSlider.value = 0
        greenColorSlider.tintColor = .green
        blueColorSlider.value = 0
        blueColorSlider.tintColor = .blue
    }

     override func viewWillLayoutSubviews() {
        colorScreenView.backgroundColor = UIColor.init(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    // MARK: - IB Action
    @IBAction func redColorSliderAction() {
        redValueColorLabel.text = String(format: "%.2f", redColorSlider.value)
    }
    
    @IBAction func greenColorSliderAction() {
        greenValueColorLabel.text = String(format: "%.2f", greenColorSlider.value)
    }
    
    @IBAction func blueColorSliderAction() {
        blueValueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
}

