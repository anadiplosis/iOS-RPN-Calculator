//
//  rpnCalculatorBrain.m
//  RPN Calculator
//
//  Created by David Tallon on 9/14/14.
//  Copyright (c) 2014 digiTal Software. All rights reserved.
//
/********************************************************************************|
|      TITLE: RPN BRAIN     VERSION: 1.0        AUTHOR: DAVID S TALLON           |
|      DATE: 9/12/14        LANGUAGE: OBJ-C     IDE: XCODE5                      |
*//******************************************************************************|
|   The Brain of this calculator implements RPN Logic. Operands are stored       |
| onto a stack and then are popped off when an approriate operation is called.   |
| In this version of the RPN Calculator for iOS, I have implemented ADD, SUB,    |
| MULT, and DIV. CUrrently there are no known bugs with these Operands.          |
|                                                                                |
|   Still to be Implemented: Square Root and Squaring functions. Remove ability  |
| to enter leading zeroes. Brainstorm other features.                            |
|********************************************************************************/

#import "rpnCalculatorBrain.h"

@interface rpnCalculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;

@end

@implementation rpnCalculatorBrain

@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}


- (void)pushOperand:(double)operand
{

    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
    
}

- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if(operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)performOp:(NSString *)operation
{
    
    double result = 0;
    
    if ([operation isEqualToString:@"+"])
    {
        result = [self popOperand] + [self popOperand];
    }else if([@"_" isEqualToString:operation])
    {
        result = [self popOperand] - [self popOperand];
    }else if([@"X" isEqualToString:operation])
    {
        result = [self popOperand] * [self popOperand];
    }else if([@"%" isEqualToString:operation]){
        result = [self popOperand] / [self popOperand];
    }
    
    [self pushOperand:result];
    
    return result;
    
}

@end
