//
//  Deck.h
//  Matchismo1
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

@interface Deck : NSObject

-(void) addCard:(Card *) card atTop:(BOOL) atTop;

-(Card *) drawRandomCard;

@end
