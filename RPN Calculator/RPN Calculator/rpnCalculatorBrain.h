//
//  rpnCalculatorBrain.h
//  RPN Calculator
//
//  Created by David Tallon on 9/14/14.
//  Copyright (c) 2014 digiTal Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface rpnCalculatorBrain : NSObject
- (void)pushOperand:(double)operand;
- (double)performOp:(NSString *)operation;

@end
