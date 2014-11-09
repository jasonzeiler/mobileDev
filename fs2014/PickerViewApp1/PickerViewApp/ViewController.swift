//
//  ViewController.swift
//  PickerViewApp
//
//  Created by borrower on 11/3/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedItem.text = pickerData[row]
    }

    @IBOutlet weak var selectedItem: UILabel!
    
    @IBOutlet weak var dataSetPicker: UIPickerView!
    
    let pickerData = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


