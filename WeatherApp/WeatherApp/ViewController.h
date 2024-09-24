//
//  ViewController.h
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *temperatureText;
@property (weak, nonatomic) IBOutlet UILabel *countryText;
- (IBAction)searchButton:(id)sender;

@end

