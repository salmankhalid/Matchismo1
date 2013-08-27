//
//  PlayingCard.h
//  Matchismo1
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayingCard : NSObject

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

// declaring a private class method with a + sign
// for storing and checking valid suits.
// + means that this method is visible only for this class.
+(NSArray *) validSuits;
// similarly for an array for storing ranks.
+(NSArray *) rankStrings;
+(NSUInteger) maxRank;
@end
