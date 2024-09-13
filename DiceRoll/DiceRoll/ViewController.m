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
    
    conditionSatisfied = NO;
    indexArray = [NSMutableArray arrayWithArray:@[@0, @1, @2, @3, @4, @5]];
}
- (IBAction)btnClick:(id)sender {
    int randomNumber1 = arc4random_uniform((uint32_t)self.imageArray.count);
    int randomNumber2 = arc4random_uniform((uint32_t)self.imageArray.count);
    
    [self rollFunctionality:randomNumber1 secondNumber:randomNumber2];
}

- (void)rollFunctionality:(int)indexOne secondNumber:(int)indexTwo {
    NSLog(@"%d", indexOne);
    
    conditionSatisfied = NO;
    
    if (indexArray.count != 0) {
        [self duplicateDiceLogic:indexArray indexNumber:indexOne];
    } else {
        NSLog(@"zero array");
        indexArray = [NSMutableArray arrayWithArray:@[@0, @1, @2, @3, @4, @5]];
        [self duplicateDiceLogic:indexArray indexNumber:indexOne];
    }
}

-(void) duplicateDiceLogic:(NSMutableArray *)array indexNumber:(int)diceNumber {
    NSLog(@" Count: %d", array.count);
        while (!conditionSatisfied) {
            if ([array containsObject:@(diceNumber)]) {
                NSLog(@"%d", diceNumber);
                self.diceOne.image = self.imageArray[diceNumber];
                //Remove here
                [array removeObject:@(diceNumber)];
                NSLog(@"%@", array);
                conditionSatisfied = YES;
            } else {
                diceNumber = arc4random_uniform((uint32_t)self.imageArray.count);
            }
        }
}


@end
