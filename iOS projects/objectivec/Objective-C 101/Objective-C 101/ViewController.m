//
//  ViewController.m
//  Objective-C 101
//
//  Created by Jason Zeiler on 9/23/14.
//  Copyright (c) 2014 Jason Zeiler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *lightGrayViewConstraints;

@end

@implementation ViewController

- (void)loadView{
    self.view = [[UIv alloc] initWithFrame:]
}

- (UIView *)lightGreyView
{
    if (!_lightGreyView) {
        _lightGreyView = {[[UIView alloc] initWithFrame:CGRectZero];
        [_lightGreyView setTranslatesAutoresizingMaskIntoConstraints:NO];
        _lightGreyView.backgroundColor = [UIColor.lightGrayColor];
    }
        return _lightGreyView;
}

    - (NSArray *)lightGrayViewConstraints{
        if (!_lightGrayViewConstraints){
            _lightGrayViewConstraints = @[
                                          [NSLayoutConstraint constraintWithItem:self.lightGreyView
                                                                       attribute:NSLayoutAttributeTop
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeTop
                                                                      multiplier:1.0f
                                                                        constant:0.0f],
                                          
                                          ]
        }
    }

@end
