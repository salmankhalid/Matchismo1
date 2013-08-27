//
//  Card.m
//  Matchismo
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import "Card.h"

//private constructor of Card class.

@interface Card()
@end

@implementation Card

-(int) match:(NSArray *) otherCards
{
    int score=0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score=1;
        }
        
    }
    return score;
    
}

@end
