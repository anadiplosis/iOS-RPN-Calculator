//
//  rpncalculatorViewController.h
//  RPN Calculator
//
//  Created by David Tallon on 9/12/14.
//  Copyright (c) 2014 digiTal Software. All rights reserved.
//

/********************************************************************************|
 |   TITLE: RPN CALC INTERFACE     VERSION: 1.0        AUTHOR: DAVID S TALLON    |
 |    DATE: 9/12/14               LANGUAGE: OBJ-C         IDE: XCODE5            |
 *//*****************************************************************************|
|   This is the implementation of the controller for an RPN Calculator. This     |
| version implements numerical digits and links them to the RPN BRAIN. It also   |
| has 4 operations buttons for MULT, DIV, ADD, SUB. As well as the ENTER key     |
| required to push operands onto the stack.                                      |
|                                                                                |
|   Still to be Implemented: Square Root and Squaring buttons. A prettier        |
| interface and potentially better useage of the screen real estate for more     |                     
| functions.                                                                     |
|********************************************************************************/

#import <UIKit/UIKit.h>

@interface rpncalculatorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;

@end
