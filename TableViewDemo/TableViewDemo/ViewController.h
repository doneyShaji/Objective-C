//
//  ViewController.h
//  TableViewDemo
//
//  Created by P10 on 13/09/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

