//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

- (void) setFlipCount:(int)flipCount
{
    _flipCount=flipCount;
    self.flipsLabel.text= [NSString stringWithFormat:@"Flips: %d",self.flipCount];
}

// IBACTION is equivalent to void.
- (IBAction)flipCard:(UIButton *)sender {
    
    /**
     * Easy way!
     **/
//    if (!sender.isSelected) {
//        sender.selected=YES;
//    }
//    else
//    {
//        sender.selected=NO;
//    }
//
    
    // one line code
    sender.selected=!sender.isSelected;
    self.flipCount++;
}


@end
