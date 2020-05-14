//
//  LSIWeather.h
//  DailyWeather
//
//  Created by Tobi Kuyoro on 14/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIWeather : NSObject

@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly, copy) NSString *summary;
@property (nonatomic, readonly, copy) NSString *icon;
@property (nonatomic, readonly) double precipIntesity;
@property (nonatomic, readonly) double precipProbability;
@property (nonatomic, readonly) double temperature;
@property (nonatomic, readonly) double apparentTemperature;
@property (nonatomic, readonly) double humidity;
@property (nonatomic, readonly) double pressure;
@property (nonatomic, readonly) double windspeed;
@property (nonatomic, readonly) NSNumber *windBearing;
@property (nonatomic, readonly) NSNumber *uvIndex;

- (instancetype)initWithTime:(NSDate *)time
                     summary:(NSString *)summary
                        icon:(NSString *)icon
             precipIntensity:(double)precipIntensity
           precipProbability:(double)precipProbability
                 temperature:(double)temperature
         apparentTemperature:(double)apparentTemperature
                    humidity:(double)humidity
                    pressure:(double)pressure
                   windspeed:(double)windspeed
                 windBearing:(NSNumber *)windBearing
                     uvIndex:(NSNumber *)uvIndex;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
