//
//  WeatherModel.m
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import "WeatherModel.h"

@implementation WeatherModel

- (nonnull instancetype)initWithTemperature:(nonnull NSNumber *)temperature humidity:(nonnull NSNumber *)humidity cityName:(nonnull NSString *)cityName weatherID:(nonnull NSNumber *)weatherID pressure:(nonnull NSNumber *)pressure temp_max:(nonnull NSNumber *)temp_max temp_min:(nonnull NSNumber *)temp_min wind_deg:(nonnull NSNumber *)wind_deg wind_speed:(nonnull NSNumber *)wind_speed {
    
    self = [super init];
    if (self) {
        _temperature = temperature;
        _humidity = humidity;
        _cityName = cityName;
        _weatherID = weatherID;
//        _pressure 
    }
    return self;
}

@end
