//
//  ViewController.m
//  DiceRoll
//
//  Created by P10 on 11/09/24.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Array with multiple images
    self.imageArray = @[
        [UIImage imageNamed: @"DiceOne"],
        [UIImage imageNamed: @"DiceTwo"],
        [UIImage imageNamed: @"DiceThree"],
        [UIImage imageNamed: @"DiceFour"],
        [UIImage imageNamed: @"DiceFive"],
        [UIImage imageNamed: @"DiceSix"]
    ];
    
    
}
- (IBAction)btnClick:(id)sender {
    NSLog(@"here");
    int randomNumber1 = arc4random_uniform((uint32_t)self.imageArray.count);
    int randomNumber2 = arc4random_uniform((uint32_t)self.imageArray.count);
    _diceOne.image = _imageArray[randomNumber1];
    _diceTwo.image = _imageArray[randomNumber2];
}


@end
