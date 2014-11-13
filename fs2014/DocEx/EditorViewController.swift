//
//  EditorViewController.swift
//  DocEx
//
//  Created by borrower on 11/13/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {
    
    var status = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("editor view did load")
        // Do any additional setup after loading the view.
    }

    @IBAction func save(sender: AnyObject) {
        println("save")
        status = "save"
        
        performSegueWithIdentifier("docs", sender: self)
    }
    
    @IBAction func cancel(sender: AnyObject) {
        println("cancel")
        status = "cancel"
        
        performSegueWithIdentifier("docs", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("preparing in editor for segue")
        println(segue.identifier!)
        
        let destViewController = segue.destinationViewController as DocsViewController
        if (status == "save"){
            destViewController.returnStatus = "Saved New Document"
        }else{
            destViewController.returnStatus = "Cancelled Operationr"
        }
        
        
        //destViewController.returnStatus = "Hello"
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
