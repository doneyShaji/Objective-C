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

    
}

- (void)alertBox {
    UIAlertController *alertBox = [UIAlertController alertControllerWithTitle:@"Enter Data" message:@"Please enter some text." preferredStyle:UIAlertControllerStyleAlert];
    
    [alertBox addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Add Task";
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UITextField *textField = alertBox.textFields.firstObject;
        NSString *task = textField.text;
        
        if (task.length > 0) {
            [self.array addObject:task];
            NSLog(@"%@", task);
        }
        [self.tableView reloadData];
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alertBox addAction:okAction];
    [alertBox addAction:cancelAction];
    
    [self presentViewController:alertBox animated:YES completion:nil];
   
        
}

    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return self.array.count;
    }

    // Cell for each row in the table view
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        
        cell.textLabel.text = self.array[indexPath.row];
        
        return cell;
    }

    #pragma mark - UITableView Delegate

    // Enable swipe to delete functionality
    - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
        if (editingStyle == UITableViewCellEditingStyleDelete) {
            [self.array removeObjectAtIndex:indexPath.row];
            
            [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        }
    }

    - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        
        if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            cell.accessoryType = UITableViewCellAccessoryNone;
        } else {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }



- (IBAction)addItems:(id)sender {
    NSLog(@"hello");
    [self alertBox];
}
@end
