//
//  PageAViewController.swift
//  PageApp
//
//  Created by borrower on 11/6/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit

class PageAViewController: UIViewController {

    
    
    //outlet to display converted temp in Fahrenheit
    @IBOutlet weak var degFtemp: UILabel!
    // variable holding value entered into celsius/centigrade text field
    @IBOutlet weak var degCtemp: UITextField!
    //variable that formats string input into a number
    let formatTemp = NSNumberFormatter()
    
    @IBAction func convertAction(sender: AnyObject) {
        if let cTemperature = formatTemp.numberFromString(degCtemp.text) {
            let cTemp = Double(cTemperature)*1.8+32
            degFtemp.text = String(format: "%.2f", cTemp)
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
