//
//  ViewController.h
//  DiceRoll
//
//  Created by P10 on 11/09/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    BOOL conditionSatisfied;
    NSMutableArray *indexArray; //Array which can be changed
}

@property (weak, nonatomic) IBOutlet UIImageView *diceOne;
@property (weak, nonatomic) IBOutlet UIImageView *diceTwo;

@property (nonatomic, strong) NSArray *imageArray;

- (void)rollFunctionality:(int)indexOne secondNumber:(int)indexTwo;
@end

