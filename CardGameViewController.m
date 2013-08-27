//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Salman Khalid on 11/08/2013.
//  Copyright (c) 2013 Salman Khalid. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController ()

// weak means: doesn't necessary to be in the heap, if no pointer
// is pointing to it. or any other object using it.
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
    // incrementing flip count
     self.flipCount++;
    
    // initialising the deck by calling init of PlayingCard Deck.
    // that will build those 52 cards.
    Deck *myDeck = [[PlayingCardDeck alloc] init];
    // from the card deck calling the draw random method.
    // which will pick a specific card from the deck.
    Card *card=myDeck.drawRandomCard;
    
    // applying the card contents to the title of the button when
    // button state is selected
    // or you can apply it can button state is disabled.
    
    [sender setTitle:card.contents forState:UIControlStateSelected];
    
   
}


/*
- (void)flipCard:(NSString *)title forState:(UIControlState)state
{
    
}*/
@end
