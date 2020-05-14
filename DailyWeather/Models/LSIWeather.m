//
//  LSIWeather.m
//  DailyWeather
//
//  Created by Tobi Kuyoro on 14/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIWeather.h"

@implementation LSIWeather

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
                     uvIndex:(NSNumber *)uvIndex {
    self = [super init];
    if (self) {
        _time = time;
        _summary = [summary copy];
        _icon = [icon copy];
        _precipIntesity = precipIntensity;
        _precipProbability = precipProbability;
        _temperature = temperature;
        _apparentTemperature = apparentTemperature;
        _humidity = humidity;
        _pressure = pressure;
        _windspeed = windspeed;
        _windBearing = windBearing;
        _uvIndex = uvIndex;
    }

    return self;
}

@end
