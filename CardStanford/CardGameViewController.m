//
//  ViewController.m
//  CardStanford
//
//  Created by Dimitar Danailov on 7/5/17.
//
//

#import "CardGameViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsCounter;
@property (nonatomic) int flipCount;

@end

@implementation ViewController


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
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:@"A♠︎" forState:UIControlStateNormal];
    }
    
    self.flipCount++;
}


@end
