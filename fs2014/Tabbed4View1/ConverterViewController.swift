//
//  ConverterViewController.swift
//  Tabbed4View
//
//  Created by borrower on 10/29/14.
//  Copyright (c) 2014 borrower. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var fTemp: UILabel!
    
    @IBOutlet weak var cTemp: UITextField!
    let formatTemp = NSNumberFormatter()
    
    @IBAction func convertButton(sender: AnyObject) {
        if let cTemperature = formatTemp.numberFromString(cTemp.text) {
            let newTemp = Double(cTemperature)*1.8+32
            fTemp.text = String(format: "%.2f", newTemp)
        }

    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
