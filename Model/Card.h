//
//  Card.h
//  Matchismo
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;

@property (nonatomic,getter = isFaceUp) BOOL faceUp;
@property (nonatomic,getter = isUnplayabale) BOOL unPlayable;

-(int) match:(NSArray *) otherCards;

@end