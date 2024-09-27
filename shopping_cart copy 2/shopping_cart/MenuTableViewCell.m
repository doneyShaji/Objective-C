//
//  MenuTableViewCell.m
//  shopping_cart
//
//  Created by P10 on 25/09/24.
//

#import "MenuTableViewCell.h"


@implementation MenuTableViewCell


- (IBAction)ItemAdd:(id)sender {
    NSLog(@"Button Click");

    if(self.onSelectItem){
        self.onSelectItem(self);
    }
}



@end
