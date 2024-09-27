//
//  MenuTableViewCell.h
//  shopping_cart
//
//  Created by P10 on 25/09/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^cellActionHandlerBlock)(UITableViewCell *sender);
@interface MenuTableViewCell : UITableViewCell
@property (nonatomic, copy) cellActionHandlerBlock onSelectItem;

@property (weak, nonatomic) IBOutlet UIImageView *menuImage;
@property (weak, nonatomic) IBOutlet UILabel *menuTitle;
@property (weak, nonatomic) IBOutlet UILabel *menuPrice;
- (IBAction)ItemAdd:(id)sender;



@end

NS_ASSUME_NONNULL_END
