//
//  Deck.m
//  Matchismo1
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import "Deck.h"

@interface Deck()
// declaring a mutable array so that we could add/remove contents in that array.
// Declared mutable because for immutable arrays we can't achieve this functionality.
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Deck

// initialising mutable array if it is Nil.
-(NSMutableArray *) cards
{
  if(!_cards)
  {
      _cards=[[NSMutableArray alloc] init];
  }
    return _cards;
}

-(void) addCard:(Card *) card atTop:(BOOL) atTop
{
    if (atTop) {
        // if at the top then insert object of card at 0th index.
        // sending a message
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }
}


-(Card *) drawRandomCard
{
    Card *randomCard=nil;
    
    // if ther is any card in mutable array
    if(self.cards.count)
    {
        // randomly pick card from card array.
        unsigned index=arc4random() % self.cards.count;
        // set this randomly picked card in randomCard pointer object.
        randomCard=self.cards[index];
        // remove that card from the card array.
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
	