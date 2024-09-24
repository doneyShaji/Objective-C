//
//  APIService.m
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import "APIService.h"
#import "WeatherModel.h"
@implementation APIService

- (void)fetchDataFromAPI:(nonnull NSString *)cityname completion:(void (^)(WeatherModel *weatherData))completion {
    
    
    NSString *apiKey = @"1134f64405403076b6ca565b42bd1c85";
    NSString *urlString = [NSString stringWithFormat:@"https://api.openweathermap.org/data/2.5/weather?q=%@&appid=%@&units=metric", cityname, apiKey];
    
    
    urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    //Create The URL
    NSURL *url = [NSURL URLWithString:urlString];
    
    //Create the request
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"GET"];
    
    //Create the Task
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        if (error) {
            NSLog(@"Error: %@", error.localizedDescription);
            return;
        }
        
        if (data) {
            NSError *jsonError = nil;
            NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError) {
                NSLog(@"Error: %@", jsonError);
            } else {
                NSLog(@"Response: %@", jsonResponse);
                NSDictionary *mainData = jsonResponse[@"main"];
                NSNumber *temp = mainData[@"temp"];
                NSNumber *humidity = mainData[@"humidity"];
                
                
                NSArray *iconData = jsonResponse[@"weather"];
                NSNumber *weatherID = nil;
                
                if (iconData.count > 0) {
                    NSDictionary *arrayData = iconData[0];
                    weatherID = arrayData[@"id"];
                }
                
                
                //Create a Weather Object
                
                WeatherModel *weather = [[WeatherModel alloc]initWithTemperature:temp humidity:humidity cityName:cityname weatherID:weatherID];
                
                if (completion) {
                    completion(weather);
                }
            }
        }
    
    }];
    
    [dataTask resume];
}


@end
