//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Nathaniel Leonard on 8/18/20.
//  Copyright © 2020 Nathaniel Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages [tipPercentageControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
    }
}

