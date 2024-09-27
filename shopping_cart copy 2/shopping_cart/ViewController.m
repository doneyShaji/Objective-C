//
//  ViewController.m
//  shopping_cart
//
//  Created by P10 on 25/09/24.
//

#import "ViewController.h"
#import "MenuTableViewCell.h"
@interface ViewController () {
    NSInteger totalAmount;
}
@property(strong, nonatomic) NSArray *dataArray;
@property(strong, nonatomic) NSMutableArray *cartArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataArray = @[
            @{@"title": @"Burger", @"price": @10, @"image": @"image1"},
            @{@"title": @"Pizza", @"price": @20, @"image": @"image2"},
            @{@"title": @"Salad", @"price": @10, @"image": @"image3"},
            @{@"title": @"Pasta", @"price": @20, @"image": @"image4"},
            @{@"title": @"Sushi", @"price": @30, @"image": @"image5"}
        ];
    
    totalAmount = 0;
    
    self.cartTable.hidden = YES;
    
    self.cartArray = [[NSMutableArray alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.cartTable.delegate = self;
    self.cartTable.dataSource = self;
}


// Number of rows for the main menu table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.tableView) {
        return self.dataArray.count; // Main menu items
    } else {
        return self.cartArray.count; // Cart items
    }
}

// Cell for each row in both the menu and cart table views
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (tableView == self.tableView) {
        MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        
        NSDictionary *data = self.dataArray[indexPath.row];
        
        // Set the title, price, and image for the menu cell
        cell.menuTitle.text = data[@"title"];
        cell.menuPrice.text = [NSString stringWithFormat:@"$%@",data[@"price"]];
        cell.menuImage.image = [UIImage imageNamed:data[@"image"]];
        
        // Add to cart on button tap
        cell.onSelectItem = ^(UITableViewCell * sender) {
            // Get the selected item's title
            NSString *selectedTitle = self.dataArray[indexPath.row][@"title"];
            // Find the item i n cartArray
            NSPredicate *predicate = [NSPredicate predicateWithFormat:@"title == %@", selectedTitle];
            NSArray *filteredArray = [self.cartArray filteredArrayUsingPredicate:predicate];
            
            if (filteredArray.count > 0) {
                // If the item exists, update the count
                NSMutableDictionary *existingItem = [filteredArray.firstObject mutableCopy];
                NSInteger currentCount = [existingItem[@"count"] integerValue];
                
                NSInteger price = [existingItem[@"price"] integerValue];
                
                NSInteger newCount = currentCount + 1;
                
                totalAmount += price;
                self.total.text = [NSString stringWithFormat:@"$%ld", (long)totalAmount];
                existingItem[@"count"] = @(newCount);
                
                NSInteger finalPrice = price * newCount;
                NSLog(@"count: %ld", (long)currentCount);
                
                existingItem[@"finalPrice"] = @(finalPrice);

                // Find the index of the existing item in cartArray and replace it
                NSUInteger index = [self.cartArray indexOfObject:filteredArray.firstObject];
                [self.cartArray replaceObjectAtIndex:index withObject:existingItem];
                self.cartTable.hidden = NO;
            } else {
                // If the item doesn't exist, add it with a count of 1
//                NSString *priceString = self.dataArray[indexPath.row][@"price"];
//                NSString *numericPart = [priceString stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"$"]];
                NSInteger currentPrice = [self.dataArray[indexPath.row][@"price"] integerValue];
                
                NSDictionary *newItem = @{@"title": selectedTitle, @"count": @1, @"price": @(currentPrice), @"finalPrice": @(currentPrice) };
                
                totalAmount += currentPrice;
                self.total.text = [NSString stringWithFormat:@"$%ld", (long)totalAmount];
                [self.cartArray addObject:newItem];
            }
            self.cartTable.hidden = NO;
//            NSLog(@"%@", self.cartArray); // Log the updated cart
            [self.cartTable reloadData];  // Reload the cart table to show changes
        };
        
        return cell;
        
    } else {
        // For the cart table
        UITableViewCell *cartCell = [tableView dequeueReusableCellWithIdentifier:@"cartCell" forIndexPath:indexPath];

        NSDictionary *cartItem = self.cartArray[indexPath.row];

        cartCell.textLabel.text = [NSString stringWithFormat:@"%@ (x%@)", cartItem[@"title"], cartItem[@"count"]];
        cartCell.textLabel.font = [UIFont systemFontOfSize:30];

        cartCell.detailTextLabel.text = [NSString stringWithFormat:@"$%@", cartItem[@"price"]];
        cartCell.detailTextLabel.font = [UIFont systemFontOfSize:30];

        return cartCell;

    }
}


@end
