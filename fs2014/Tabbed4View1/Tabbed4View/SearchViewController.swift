//
//  SearchViewController.swift
//  Tabbed4View
//
//  Created by borrower on 10/28/14.
//  Copyright (c) 2014 borrower. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var incomingText: UITextField!
    
    @IBOutlet weak var searchOutput: UILabel!
    
    @IBAction func searchTheString(sender: AnyObject) {
        if let searchText = incomingText.text{
          searchOutput.text = searchText
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
