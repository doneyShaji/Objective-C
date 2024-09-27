//
//  WeatherModel.h
//  WeatherApp
//
//  Created by P10 on 23/09/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeatherModel : NSObject

@property (strong, nonatomic) NSNumber *temperature;
@property (strong, nonatomic) NSNumber *humidity;
@property (nonatomic, copy) NSString *cityName;
@property (strong, nonatomic) NSNumber *weatherID;
@property (strong, nonatomic) NSNumber *pressure;
@property (strong, nonatomic) NSNumber *temp_max;
@property (strong, nonatomic) NSNumber *temp_min;
@property (strong, nonatomic) NSNumber *wind_deg;
@property (strong, nonatomic) NSNumber *wind_speed;

-(instancetype)initWithTemperature:(NSNumber *)temperature
                          humidity:(NSNumber *)humidity
                          cityName:(NSString *)cityName
                         weatherID:(NSNumber *)weatherID
                          pressure:(NSNumber *)pressure
                          temp_max:(NSNumber *)temp_max
                          temp_min:(NSNumber *)temp_min
                          wind_deg:(NSNumber *)wind_deg
                        wind_speed:(NSNumber *)wind_speed;
@end

NS_ASSUME_NONNULL_END
