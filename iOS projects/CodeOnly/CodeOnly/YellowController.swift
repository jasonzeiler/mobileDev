//
//  YellowController.swift
//  CodeOnly
//
//  Created by Jason Zeiler on 9/18/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

import UIKit



class YellowViewController: UIViewController{

    let textField = UITextField(frame:CGRectZero)
    let button = UIButton(frame: CGRectZero)
    
    var textFieldContraints:[NSLayoutConstraint]{
        let constraintArray = [NSLayoutConstraint]()
            
            return constraintArray
    }
    
    var buttonContraints:[NSLayoutConstraint]{
        let constraintArray = [NSLayoutConstraint]()
            return constraintArray
    }
    
    override func loadView(){
        view = UIView(frame: CGRectZero)
        view.backgroundColor = UIColor.yellowColor()
        textField.setTranslatesAutoresizingMaskIntoConstraints(false)
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(textField)
        view.addSubview(button)
    }
}