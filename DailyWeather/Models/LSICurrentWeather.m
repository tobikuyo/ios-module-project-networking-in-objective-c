//
//  LSICurrentWeather.m
//  DailyWeather
//
//  Created by Tobi Kuyoro on 14/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSICurrentWeather.h"

@implementation LSICurrentWeather

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

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    NSNumber *timeNumber = dictionary[@"time"];
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeNumber.longValue];
    NSString *summary = dictionary[@"summary"];
    NSString *icon = dictionary[@"icon"];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *temperature = dictionary[@"temperature"];
    NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];

    if (!(timeNumber || summary || icon)) {
        return nil;
    }

    if ([precipProbability isKindOfClass:[NSNull class]]) {
        precipProbability = nil;
    }

    if ([precipIntensity isKindOfClass:[NSNull class]]) {
        precipIntensity = nil;
    }

    if ([temperature isKindOfClass:[NSNull class]]) {
        temperature = nil;
    }

    if ([apparentTemperature isKindOfClass:[NSNull class]]) {
        apparentTemperature = nil;
    }

    if ([humidity isKindOfClass:[NSNull class]]) {
        humidity = nil;
    }

    if ([pressure isKindOfClass:[NSNull class]]) {
        pressure = nil;
    }

    if ([windSpeed isKindOfClass:[NSNull class]]) {
        windSpeed = nil;
    }

    if ([windBearing isKindOfClass:[NSNull class]]) {
        windBearing = nil;
    }

    if ([uvIndex isKindOfClass:[NSNull class]]) {
        uvIndex = nil;
    }

    self = [self initWithTime:time
                      summary:summary
                         icon:icon
              precipIntensity:precipIntensity.doubleValue
            precipProbability:precipProbability.doubleValue
                  temperature:temperature.doubleValue
          apparentTemperature:apparentTemperature.doubleValue
                     humidity:humidity.doubleValue
                     pressure:pressure.doubleValue
                    windspeed:windSpeed.doubleValue
                  windBearing:windBearing
                      uvIndex:uvIndex];

    return self;
}

@end
