// Playground - noun: a place where people can play

import UIKit

let viewRect = CGRect(x: 0.0, y: 0.0, width: 320.0, height: 480.0)
let view = UIView(frame: viewRect)

//let view = UIView(frame: viewRect)
//view.backgroundColor = UIColor.blackColor()
view.backgroundColor = UIColor(red: 240.0/255.0, green: 230.0/255.0, blue: 242.0/255.0, alpha: 1.0)

let greenView = UIView(frame: CGRectZero)
greenView.backgroundColor = UIColor.greenColor()

view.addSubview(greenView)

let greenViewTopConstraint = NSLayoutConstraint(item: greenView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 20.0)
let greenViewRightConstraint = NSLayoutConstraint(item: greenView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: -16.0)
let greenViewBottomConstraint = NSLayoutConstraint(item: greenView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -10.0)
let greenViewLeftConstraint = NSLayoutConstraint(item: greenView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 16.0)



let blueView = UIView(frame: CGRectZero)
blueView.backgroundColor = UIColor.blueColor()


let orangeView = UIView(frame: CGRectZero)
orangeView.backgroundColor = UIColor.orangeColor()


let yellowView = UIView(frame: CGRectZero)
yellowView.backgroundColor = UIColor.yellowColor()


view.addSubview(blueView)
view.addSubview(orangeView)
view.addSubview(yellowView)
