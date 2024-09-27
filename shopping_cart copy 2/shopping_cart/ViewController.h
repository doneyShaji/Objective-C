//
//  ViewController.h
//  shopping_cart
//
//  Created by P10 on 25/09/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *total;
@property (weak, nonatomic) IBOutlet UILabel *totalPaid;
@property (weak, nonatomic) IBOutlet UIButton *checkout;
@property (weak, nonatomic) IBOutlet UITableView *cartTable;
@property (weak, nonatomic) IBOutlet UIView *emptyCartView;
@property (weak, nonatomic) IBOutlet UILabel *emptyCartLabel;

@end

