//
//  PlayingCard.m
//  Matchismo1
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


// creating a public method
// for storing card contents
- (NSString *) contents
{
    // bad representation. This will show cards as 11heart, 12 brick etc.
    //return [NSString stringWithFormat:@"%d%@",self.rank,self.suit];
    
    // @[] for creating an array. @"J" for creating a string constant.
    // a playing card with a rank of zero(default) will shown as ? in the deck.
    /*
     NSArray *rankString=@[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];*/
    NSArray *rankString=[PlayingCard rankStrings];
    // get rank values from rankstring array and appending it with suit string
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

// as we have manually provided suit's getters and setters
// so we need to set this property on our own.
@synthesize suit=_suit;

//suit property getter method.
// setting up ? when suit is zero or nil.
-(NSString *) suit
{
    return _suit ? _suit :@"?";
}

//suit setter method.
// in order to make sure no body else sets anyother garbage stuff
// apart from us which we have set it at this level.
- (void)setSuit:(NSString *)suit
{
    // invoking valid suits method over here
    if([[PlayingCard validSuits] containsObject:suit ])
    {
        _suit=suit;
    }
}

+(NSArray *) validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+(NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

// max rank check method
+(NSUInteger) maxRank
{
    // count a built in method for an array.
    // another way to call a method in the class.
    // calling rankString method.
    return [self rankStrings].count-1;
}

// setter for rank property.
// checking a rank can not be greater than the max rank.
-(void) setRank:(NSUInteger)rank
{
    if(rank<= [PlayingCard maxRank])
    {
        _rank=rank;
    }
    
}// end setter method.



@end
