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
          print("tax = 15%")
          
      case 47631...95259:
          print("tax = 20.5%")
          
      case 95260...147667:
          print("tax = 26%")
          
      case 147668...210371:
          print("tax = 29%")
          
      default:
          print("Tax = 33%")
            
            
        }
        
        
        
    }
    
    
    
    
}

