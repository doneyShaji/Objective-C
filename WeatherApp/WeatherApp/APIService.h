//
//  APIService.h
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import <Foundation/Foundation.h>
#import "WeatherModel.h"
#import "APIService.h"
NS_ASSUME_NONNULL_BEGIN

@interface APIService : NSObject

-(void)fetchDataFromAPI:(NSString *)cityname completion:(void (^)(WeatherModel *weatherData))completion;

@end

NS_ASSUME_NONNULL_END
