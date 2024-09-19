//
//  ViewController.h
//  TodoList
//
//  Created by P10 on 19/09/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)addItems:(id)sender;

@end

