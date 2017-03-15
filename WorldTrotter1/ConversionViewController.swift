//
//  ConversionViewController.swift
//  WorldTrotter1
//
//  Created by Rollin Francois on 3/12/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet var celciusLabel: UILabel!
    
    
    
    //MARK: Actions
    @IBAction func farenheitFieldEditingChanged(_ textField: UITextField) {
        
        // celciusLabel.text = textField.text
        if let text = textField.text, !text.isEmpty {
            celciusLabel.text = text
        } else {
            celciusLabel.text = "???"
        }
    }
    
}
