//
//  Card.m
//  CardGameStanford
//
//  Created by Dimitar Danailov on 7/6/17.
//
//

#import "Card.h"

@implementation Card

@synthesize contents = _contents;
@synthesize chosen = _chosen;
@synthesize matched = _matched;

- (NSString *) contents
{
    return _contents;
}

- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

- (BOOL)isChosen
{
    return _chosen;
}

- (void)setChosen:(BOOL)chosen
{
    _chosen = chosen;
}

- (BOOL)isMatched
{
    return _matched;
}

- (void)setMatched:(BOOL)matched
{
    _matched = matched;
}

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    
    return score;
}

@end
