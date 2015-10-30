//
//  ViewController.m
//  TipCalculator
//
//  Created by Benson Huynh on 2015-10-30.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UILabel *tipPercentageTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    
    float billedAmount =  [self.billAmountTextField.text floatValue];
    float tipAmount = 0.15 * billedAmount;
    NSString *displayedTip = [NSString stringWithFormat:@"%0.2f", tipAmount];
    //  NSString *displayedTip = [[NSNumber numberWithFlo:tipAmount] stringValue];
    [self.tipPercentageTextField setText:displayedTip];
    
}


@end

