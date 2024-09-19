//
//  ViewController.m
//  TableViewDemo
//
//  Created by P10 on 13/09/24.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[@"One", @"Two", @"Three", @"Four", @"Five",@"One", @"Two", @"Three", @"Four", @"Five"];
}

#pragma mark - UITableView DataSource Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.dataArray[indexPath.row];
    cell.backgroundColor = [UIColor orangeColor];
    return cell;
}

#pragma mark - UITableViewDelegate Method
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *selectedItem = self.dataArray[indexPath.row];
    NSLog(@"%@", selectedItem);
    
    [tableView deselectRowAtIndexPath:indexPath animated:true];
}

@end
