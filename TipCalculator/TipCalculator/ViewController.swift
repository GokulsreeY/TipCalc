//
//  ViewController.swift
//  TipCalculator
//
//  Created by Gokulsree Yenugadhati on 12/1/16.
//  Copyright © 2016 Gokul Yenugadhati. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var val = 0.0
    var settings = SettingsViewController()

    override func viewDidLoad() {
        
       super.viewDidLoad()
        if(settings.defVal.object(forKey: "SwitchedState") != nil){
            tipControl.selectedSegmentIndex = settings.defVal.integer(forKey: "SwitchedState")
            
        }else{
            tipControl.selectedSegmentIndex = 0
            
        }
        
        
            
        
        
        
        
        
     
        
        // Do any additional setup after loading the view, typically from a nib.
       
       // var valueOfTip = defVal.double(forKey:"percentage")
        //valueOfTip = tipPercentages[0]
       
        //self.title = "Tip Calculator"
       //defaults = SettingsViewController.defaults
//        let defVal = UserDefaults.standard
//        
//        if(defVal.object(forKey: "DefaultState") != nil){
//            tipControl.selectedSegmentIndex = defVal.integer(forKey: "DefaultState")
//            
//        }
       
    }
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
         //settings.onTap(tipControl)
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
   let tipPercentages = [0.15,0.18,0.20]
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    /*@IBOutlet weak var tipPercentage: UITextField!*/
    
   
    @IBAction func calculateTip(_ sender: AnyObject) {
        
            let input = Double (amountField.text!) ?? 0
            
            
            let tipAmnt = input * tipPercentages[tipControl.selectedSegmentIndex]
            
            let total =  input + (tipAmnt)
            tipAmountLabel.text =  String(format: "$%.2f",tipAmnt)
            totalLabel.text = String(format: "$%.2f",total)
            
        
    }
   
   /* @IBAction func onTwentyPercent(sender: AnyObject) {
        
    }
    @IBAction func onEighteenPercent(_ sender: Any) {
        let input = Double (amountField.text!)
        let tipAmnt = input! * (18/100)
        let total =  input! + (input! * (18/100))
        tipAmountLabel.text = "\(tipAmnt)"
        totalLabel.text = "\(total)"
        
        
    }
    @IBAction func onTwentyFivePercent(_ sender: Any) {
        
        let input = Double (amountField.text!)
        let tipAmnt = input! * (25/100)
        let total =  input! + (input! * (25/100))
        tipAmountLabel.text = "\(tipAmnt)"
        totalLabel.text = "\(total)"
    }*/
    @IBOutlet weak var amountField: UITextField!
    
    
    @IBOutlet weak var totalLabel: UILabel!

    
   

}

