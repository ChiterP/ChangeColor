//
//  ViewController.swift
//  ChangeColor
//
//  Created by 18316409 on 26.03.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var colorScreenView: UIView!
    
    @IBOutlet weak var redValueColorLabel: UILabel!
    @IBOutlet weak var greenValueColorLabel: UILabel!
    @IBOutlet weak var blueValueColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var redEditTF: UITextField!
    @IBOutlet weak var blueEditTF: UITextField!
    @IBOutlet weak var greenEditTF: UITextField!
 

    var inputColorValueRed: Float!
    var inputColorValueGreen: Float!
    var inputColorValueBlue: Float!    
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // View
        colorScreenView.layer.cornerRadius = 10
        
        // Sliders
        redColorSlider.value = inputColorValueRed
        
        redColorSlider.tintColor = .red
        greenColorSlider.value = inputColorValueGreen
        greenColorSlider.tintColor = .green
        blueColorSlider.value = inputColorValueBlue
        blueColorSlider.tintColor = .blue
        
        redValueColorLabel.text = String(inputColorValueRed)
        greenValueColorLabel.text = String(inputColorValueGreen)
        blueValueColorLabel.text = String(inputColorValueBlue)
        
        
        redEditTF.text = String(inputColorValueRed)
        greenEditTF.text = String(inputColorValueGreen)
        blueEditTF.text = String(inputColorValueBlue)
        
    }

     override func viewWillLayoutSubviews() {
        colorScreenView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    
    // MARK: - IB Action
    @IBAction func redColorSliderAction() {
        redValueColorLabel.text = String(format: "%.2f", redColorSlider.value)
        redEditTF.text = String(format: "%.2f", redColorSlider.value)
    }
    
    @IBAction func greenColorSliderAction() {
        greenValueColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        greenEditTF.text = String(format: "%.2f", greenColorSlider.value)
    }
    
    @IBAction func blueColorSliderAction() {
        blueValueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
        blueEditTF.text = String(format: "%.2f", blueColorSlider.value)
    }
    
    @IBAction func DoneButtonAction(_ sender: Any) {
        dismiss(animated: true)
        
    }
}
