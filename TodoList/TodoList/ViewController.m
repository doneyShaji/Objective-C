//
//  ViewController.m
//  TodoList
//
//  Created by P10 on 19/09/24.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
//    self.array = @[@"first",@"second",@"Third"];
    self.array = [NSMutableArray array];

    [self alertBox];
}

- (void)alertBox {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *selectedItem = self.array[indexPath.row];
    NSLog(@"%@", selectedItem);
    
    [tableView deselectRowAtIndexPath:indexPath animated:true];
}


- (IBAction)addItems:(id)sender {
    NSLog(@"hello");
}
@end
