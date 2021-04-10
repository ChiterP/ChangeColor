//
//  StartViewController.swift
//  ChangeColor
//
//  Created by 18316409 on 09.04.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(redValue: Float, greenValue: Float, blueValue: Float)
}

class StartViewController: UIViewController {
    
    // MARK: - Public Properties
    var redValue: Float! = 0.88
    var greenValue: Float! = 0.98
    var blueValue: Float! = 0.34
        
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewColor()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let startVC = segue.destination as? SettingsViewController else { return }
        startVC.inputColorValueBlue = blueValue
        startVC.inputColorValueRed = redValue
        startVC.inputColorValueGreen = greenValue
        startVC.delegate = self
    }
    
    // MARK: - Private Functions
    private func setViewColor() {
        view.backgroundColor = UIColor (red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1)
    }
}
    
// MARK: - Extensions
extension StartViewController: SettingsViewControllerDelegate {
    func setNewValues(redValue: Float, greenValue: Float, blueValue: Float) {
        
        if redValue != 0 {
            self.redValue = redValue
            setViewColor()
        }
        if greenValue != 0 {
            self.greenValue = greenValue
            setViewColor()
        }
        if blueValue != 0 {
            self.blueValue = blueValue
            setViewColor()
        }
    }
}
