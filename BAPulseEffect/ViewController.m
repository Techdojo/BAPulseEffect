//
//  ViewController.m
//  BAPulseEffect
//
//  Created by Bryan Antigua on 12/3/14.
//  Copyright (c) 2014 Bryan Antigua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.bottomButton changePulseOutlineColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    [self.topButton buttonPressAnimation];
    [self.bottomButton buttonPressAnimation];

}
@end
