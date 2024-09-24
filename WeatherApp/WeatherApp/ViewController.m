//
//  ViewController.m
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import "ViewController.h"
#import "APIService.h"
#import "WeatherModel.h"
@interface ViewController ()

@property (strong, nonatomic) APIService *apiService;
@property (strong, nonatomic) NSString *location;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}


- (IBAction)searchButton:(id)sender {
    
    self.location = self.searchTextField.text;
    NSLog(@"%@", self.location);
    
    self.apiService = [[APIService alloc]init];
    [self.apiService fetchDataFromAPI:self.location completion:^(WeatherModel * _Nonnull weatherData) {
        NSLog(@"Fetched temperature: %@", weatherData.temperature);
        dispatch_async(dispatch_get_main_queue(), ^{
            self.temperatureText.text = [NSString stringWithFormat:@"%.2f", weatherData.temperature.floatValue];
            self.countryText.text = [NSString stringWithFormat:@"%@", weatherData.cityName];
            NSString *icon = [self getConditionName:weatherData.weatherID];
            self.iconImage.image = [UIImage systemImageNamed:icon];
            
        });
    }];
}

-(NSString *)getConditionName:(NSNumber *)weatherID {
    
    NSInteger weatherIDValue = [weatherID integerValue];
    switch (weatherIDValue) {
        case 200 ... 232:
            return @"cloud.bolt";
            break;
            
        case 300 ... 331:
            return @"cloud.drizzle";
            break;
            
        case 500 ... 531:
            return @"cloud.rain";
            break;
            
        case 600 ... 622:
            return @"cloud.snow";
            break;
            
        case 701 ... 781:
            return @"cloud.fog";
            break;
            
        case 800:
            return @"sun.max";
            break;
            
        case 801 ... 804:
            return @"cloud.bolt";
            break;
            
        default:
            return @"cloud";
    }
}
    @end
    
