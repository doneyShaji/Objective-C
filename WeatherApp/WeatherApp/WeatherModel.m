//
//  WeatherModel.m
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import "WeatherModel.h"

@implementation WeatherModel

- (nonnull instancetype)initWithTemperature:(nonnull NSNumber *)temperature humidity:(nonnull NSNumber *)humidity cityName:(nonnull NSString *)cityName weatherID:(nonnull NSNumber *)weatherID {
    
    self = [super init];
    if (self) {
        _temperature = temperature;
        _humidity = humidity;
        _cityName = cityName;
        _weatherID = weatherID;
    }
    return self;
}

@end
