//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Gokulsree Yenugadhati on 12/18/16.
//  Copyright © 2016 Gokul Yenugadhati. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
   
    var defVal = UserDefaults.standard
    @IBOutlet weak var tipController1: UISegmentedControl!
//    let percentages = [0.15,0.18,0.20];
//    let defaults = ViewController.defaultVal
    override func viewDidLoad() {
        
        super.viewDidLoad()
//        if defaults.data(forKey: "percentages") == nil {
//            defaults.set([tipController1.selectedSegmentIndex],forKey: "percentages")
//        }
//        defaults.double(forKey: "percentages")
       //let defVal = UserDefaults.standard
        
        if(defVal.object(forKey: "SwitchedState") != nil){
            tipController1.selectedSegmentIndex = defVal.integer(forKey: "SwitchedState")
            
        }else{
            tipController1.selectedSegmentIndex = 0
            
        }
    }
    
        
    
        
        
        // Do any additional setup after loading the view.
   
    
    @IBAction func onTap(_ sender: Any) {
        
//        if(UserDefaults.standard != nil){
//         let defVal = UserDefaults.standard
//            defVal.set(tipController1.selectedSegmentIndex,forKey: "SwitchedState")
//        }
        
        UserDefaults.standard.set(tipController1.selectedSegmentIndex, forKey: "SwitchedState")
        
        
        
       
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
