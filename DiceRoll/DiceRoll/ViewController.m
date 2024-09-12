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
//    self.diceTwo.image = self.imageArray[indexTwo];
    
    if (indexArray.count != 0) {
        [self duplicateDiceLogic:indexArray indexNumber:indexOne];
        NSLog(@" Count: %d", indexArray.count);
            while (!conditionSatisfied) {
                if ([indexArray containsObject:@(indexOne)]) {
                    NSLog(@"%d", indexOne);
                    self.diceOne.image = self.imageArray[indexOne];
                    //Remove here
                    [indexArray removeObject:@(indexOne)];
                    NSLog(@"%@", indexArray);
                    conditionSatisfied = YES;
                } else {
                    indexOne = arc4random_uniform((uint32_t)self.imageArray.count);
                }
            }
        } else {
            NSLog(@"zero array");
            indexArray = [NSMutableArray arrayWithArray:@[@0, @1, @2, @3, @4, @5]];
            NSLog(@" Count: %d", indexArray.count);
                while (!conditionSatisfied) {
                    if ([indexArray containsObject:@(indexOne)]) {
                        NSLog(@"%d", indexOne);
                        self.diceOne.image = self.imageArray[indexOne];
                        //Remove here
                        [indexArray removeObject:@(indexOne)];
                        NSLog(@"%@", indexArray);
                        conditionSatisfied = YES;
                    } else {
                        indexOne = arc4random_uniform((uint32_t)self.imageArray.count);
                    }
                }
        }

    
}

-(void) duplicateDiceLogic:(NSMutableArray *)array indexNumber:(int)diceNumber {
    
}


@end
