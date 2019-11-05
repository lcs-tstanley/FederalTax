//
//  ViewController.swift
//  FederalTax
//
//  Created by Stanley, Trent on 2019-11-01.
//  Copyright © 2019 Stanley, Trent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var annualIncomeTextField: UITextField!
    
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var taxOwed: UILabel!
    @IBOutlet weak var taxRate: UILabel!
    
    
    @IBAction func calculateTaxes(_ sender: Any) {
        
        let annualIncomeText = annualIncomeTextField.text!
        let exampleAnnualIncome = Double(annualIncomeText)!
        
        let userNameText = userNameTextField.text!
        
        switch exampleAnnualIncome {
            
        case 0...47630:
            
            //Calculate and set label for taxOwed rounded to 2 decimal places
             let taxOwed = exampleAnnualIncome * 0.15
            self.taxOwed.text = String("\(userNameText) your federal tax owing is \(taxOwed)")
            self.taxOwed.textColor = UIColor.lightText
            
            //Calculate and set label for taxRate rounded to 1 decimal place
            let taxRate = taxOwed / exampleAnnualIncome * 100
            self.taxRate.text = String(format: "%.1f", taxRate)
            self.taxRate.textColor = UIColor.lightText
            
        case 47631...95259:
            
            //Calculate and set label for taxOwed rounded to 2 decimal places
            let taxOwed = 47630 * 0.15 + (exampleAnnualIncome - 47630) * 0.205
            let taxOwedFormatted = String(format: "%.2f", taxOwed)
            self.taxOwed.text = String("\(userNameText) your federal tax owing is \(taxOwed)")
            self.taxOwed.textColor = UIColor.lightText
            
            //Set label for taxRate rounded to 1 decimal
            let taxRate = taxOwed / exampleAnnualIncome * 100
            self.taxRate.text = String(format: "%.1f", taxRate)
            self.taxRate.textColor = UIColor.lightText
            
            
        case 95260...147667:
            
            //Calculate and set label for taxOwed rounded to 2 decimal places
           let taxOwed = 47630 * 0.15 + 47629 * 0.205 + (exampleAnnualIncome - 95259) * 0.26
            self.taxOwed.text = String("\(userNameText) your federal tax owing is \(taxOwed)")
            self.taxOwed.textColor = UIColor.lightText
            
            //Set label for taxRate rounded to 1 decimal
            let taxRate = taxOwed / exampleAnnualIncome * 100
            self.taxRate.text = String(format: "%.1f", taxRate)
            self.taxRate.textColor = UIColor.lightText
            
            
        case 147668...210371:
            
            //Calculate and set label for taxOwed rounded to 2 decimal places
            let taxOwed = 47630 * 0.15 + 47629 * 0.205 + 52408 * 0.26 + (exampleAnnualIncome - 147667) * 0.29
            self.taxOwed.text = String("\(userNameText) your federal tax owing is \(taxOwed)")
            self.taxOwed.textColor = UIColor.lightText
            
            //Set label for taxRate rounded to 1 decimal
            let taxRate = taxOwed / exampleAnnualIncome * 100
            self.taxRate.text = String(format: "%.1f", taxRate)
            self.taxRate.textColor = UIColor.lightText
            
            
        default:
            
            //Calculate and set label for taxOwed rounded to 2 decimal places
             let taxOwed = 47630 * 0.15 + 47629 * 0.205 + 52408 * 0.26 + 62704 * 0.29 + (exampleAnnualIncome - 210371) * 0.33
            self.taxOwed.text = String("\(userNameText) your federal tax owing is \(taxOwed)")
            self.taxOwed.textColor = UIColor.lightText
            
            //Set label for taxRate rounded to 1 decimal
            let taxRate = taxOwed / exampleAnnualIncome * 100
            self.taxRate.text = String(format: "%.1f", taxRate)
            self.taxRate.textColor = UIColor.lightText
            
            
            
        }
        
        
        
    }
    
    
    
}






