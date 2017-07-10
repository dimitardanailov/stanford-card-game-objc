//
//  PlayingCard.h
//  CardGameStanford
//
//  Created by Dimitar Danailov on 7/7/17.
//
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
