//
//  PlayingCard.m
//  CardGameStanford
//
//  Created by Dimitar Danailov on 7/7/17.
//
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♥︎", @"♦︎", @"♣︎", @"♠︎"];
}

+ (NSArray *)rankStrings
{
    return @[
        @"?",
        @"A",
        @"2",
        @"3",
        @"4",
        @"5",
        @"6",
        @"7",
        @"8",
        @"9",
        @"10",
        @"J",
        @"Q",
        @"K"
    ];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count] -1;
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
