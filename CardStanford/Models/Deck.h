//
//  Deck.h
//  CardGameStanford
//
//  Created by Dimitar Danailov on 7/6/17.
//
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
