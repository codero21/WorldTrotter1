//
//  ConversionViewController.swift
//  WorldTrotter1
//
//  Created by Rollin Francois on 3/12/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet var celciusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    var farenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelciusLabel()
        }
    }
    
    var celciusValue: Measurement<UnitTemperature>? {
        if let farenheitValue = farenheitValue {
            return farenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    
    // MARK: Delegates
    
 
    
    //MARK: Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCelciusLabel()
    }
    
    @IBAction func farenheitFieldEditingChanged(_ textField: UITextField) {
        
        if let text = textField.text, let value = Double(text) {
            farenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            farenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    func updateCelciusLabel() {
        if let celciusValue = celciusValue {
            celciusLabel.text = numberFormatter.string(from: NSNumber(value: celciusValue.value))
        } else {
            celciusLabel.text = "???"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Current text: \(textField.text)")
        print("Replacement text: \(string)")
        
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        
        if existingTextHasDecimalSeparator != nil,
            replacementTextHasDecimalSeparator != nil {
            return false
        } else {
            return true
        }
        
        
        
        
        
        
    }
    
    
    
}
