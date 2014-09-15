//
//  rpncalculatorViewController.m
//  RPN Calculator
//
//  Created by David Tallon on 9/12/14.
//  Copyright (c) 2014 digiTal Software. All rights reserved.
//

#import "rpncalculatorViewController.h"
#import "rpnCalculatorBrain.h"




@interface rpncalculatorViewController ()

@property (nonatomic) BOOL userIsTyping;
@property (nonatomic,strong) rpnCalculatorBrain *brain;

@end

@implementation rpncalculatorViewController

@synthesize display = _display;
@synthesize userIsTyping = _userIsTyping;
@synthesize brain = _brain;

-(rpnCalculatorBrain *)brain
{
    if(!_brain) _brain = [[rpnCalculatorBrain alloc]init];
    return _brain;
}

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [sender currentTitle];
    
    if(self.userIsTyping)
    {
    self.display.text = [self.display.text stringByAppendingString:digit];
    } else {
        self.display.text = digit;
        self.userIsTyping = YES;
    }
    
    
}

- (IBAction)enterPressed
{
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsTyping = NO;
    
}

- (IBAction)operationPressed:(UIButton *)sender
{
    if (self.userIsTyping) [self enterPressed];
    double result = [self.brain performOp:sender.currentTitle];
    NSString *resultString = [NSString stringWithFormat:@"%g", result];
    self.display.text = resultString;
}

@end
