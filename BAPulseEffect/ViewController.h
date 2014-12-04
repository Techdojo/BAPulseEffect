//
//  ViewController.h
//  BAPulseEffect
//
//  Created by Bryan Antigua on 12/3/14.
//  Copyright (c) 2014 Bryan Antigua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BAPulseButton.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet BAPulseButton *topButton;
@property (strong, nonatomic) IBOutlet BAPulseButton *bottomButton;

- (IBAction)buttonPressed:(id)sender;

@end

