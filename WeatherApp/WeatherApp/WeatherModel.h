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

-(instancetype)initWithTemperature:(NSNumber *)temperature
                          humidity:(NSNumber *)humidity
                          cityName:(NSString *)cityName
                         weatherID:(NSNumber *)weatherID;
@end

NS_ASSUME_NONNULL_END
