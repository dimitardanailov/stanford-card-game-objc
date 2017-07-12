//
//  ViewController.m
//  CardStanford
//
//  Created by Dimitar Danailov on 7/5/17.
//
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsCounter;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;

@end

@implementation ViewController

- (Deck *)deck
{
    if (!_deck) _deck = [self createDeck];
    
    return _deck;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsCounter.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
        self.flipCount++;
    } else {
        Card *card = [self.deck drawRandomCard];
        
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            
            self.flipCount++;
        }
    }
}


@end
