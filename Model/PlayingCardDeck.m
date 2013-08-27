//
//  PlayingCardDeck.m
//  Matchismo1
//
//  Created by Salman Khalid on 26/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck:Deck

// initialiser method of playing card deck.
// return type id means object of any unknown class.

//This method is always called when a PlayingCardDeck is created.
//For example, a PlayingCardDeck might be created like this:
//Deck *myDeck = [[PlayingCardDeck alloc] init]
-(id) init
{
    //calling the init method of its super class which is Deck
    // and which in turn calls NSObject class.
    self=[super init];
    
    // if self not nil or  init properly then do rest
    if(self)
    {
        // for-each loop. iterating suits and rank
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank=1; rank <= [PlayingCard maxRank]; rank++) {
                // initialising playing card classs instance.
                PlayingCard *card=[[PlayingCard alloc] init];
                //setting up card class getters and setters.
                card.rank=rank;
                card.suit=suit;
                // using Deck's addcard method to add that card at the top.
                [self addCard:card atTop:YES];
                
            }
        }
    }
    return self;
}

@end
