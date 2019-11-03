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

        
      switch exampleAnnualIncome {
          
      case 0...47630:
        let taxOwed = exampleAnnualIncome * 0.15
           self.taxOwed.text = String(format: "%.2f", taxOwed)
          
      case 47631...95259:
          let taxOwed = exampleAnnualIncome * 0.205
            self.taxOwed.text = String(format: "%.2f", taxOwed)
     
      case 95260...147667:
        let taxOwed = exampleAnnualIncome * 0.26
            self.taxOwed.text = String(format: "%.2f", taxOwed)
     
      case 147668...210371:
        let taxOwed = exampleAnnualIncome * 0.29
            self.taxOwed.text = String(format: "%.2f", taxOwed)
      
      default:
        let taxOwed = exampleAnnualIncome * 0.33
            self.taxOwed.text = String(format: "%.2f", taxOwed)
            
            
        }
        
        
        
    }
    
    
    
    
}

