//
//  LSIDailyForecast.m
//  DailyWeather
//
//  Created by Tobi Kuyoro on 15/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIDailyForecast.h"

@implementation LSIDailyForecast

- (instancetype)initWithTime:(NSDate *)time
                     summary:(NSString *)summary
                        icon:(NSString *)icon
                 sunriseTime:(NSDate *)sunriseTime
                  sunsetTime:(NSDate *)sunsetTime
             precipIntensity:(double)precipIntensity
           precipProbability:(double)precipProbability
                  precipType:(double)precipType
              temperatureLow:(double)temperatureLow
             temperatureHigh:(double)temperatureHigh
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
        _sunriseTime = sunriseTime;
        _sunsetTime = sunsetTime;
        _precipIntesity = precipIntensity;
        _precipProbability = precipProbability;
        _precipType = precipType;
        _temperatureLow = temperatureLow;
        _temperatureHigh = temperatureHigh;
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
    NSNumber *sunriseTimeNumber = dictionary[@"sunriseTime"];
    NSNumber *sunsetTimeNumber = dictionary[@"sunsetTime"];


    NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeNumber.longValue];
    NSString *summary = dictionary[@"summary"];
    NSString *icon = dictionary[@"icon"];
    NSDate *sunriseTime = [NSDate dateWithTimeIntervalSince1970:sunriseTimeNumber.longLongValue];
    NSDate *sunsetTime = [NSDate dateWithTimeIntervalSince1970:sunsetTimeNumber.longLongValue];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *precipType = dictionary[@"precipType"];
    NSNumber *temperatureLow = dictionary[@"temperatureLow"];
    NSNumber *temperatureHigh = dictionary[@"temperatureHigh"];
    NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];

    if (!timeNumber) {
        return nil;
    }

    if ([summary isKindOfClass:[NSNull class]]) {
        summary = nil;
    }

    if ([icon isKindOfClass:[NSNull class]]) {
        icon = nil;
    }

    if ([sunriseTimeNumber isKindOfClass:[NSNull class]]) {
        sunriseTimeNumber = nil;
    }

    if ([sunsetTimeNumber isKindOfClass:[NSNull class]]) {
        sunsetTimeNumber = nil;
    }


    if ([precipProbability isKindOfClass:[NSNull class]]) {
        precipProbability = nil;
    }

    if ([precipIntensity isKindOfClass:[NSNull class]]) {
        precipIntensity = nil;
    }

    if ([precipType isKindOfClass:[NSNull class]]) {
        precipType = nil;
    }

    if ([temperatureLow isKindOfClass:[NSNull class]]) {
        temperatureLow = nil;
    }

    if ([temperatureHigh isKindOfClass:[NSNull class]]) {
        temperatureHigh = nil;
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
                  sunriseTime:sunriseTime
                   sunsetTime:sunsetTime
              precipIntensity:precipIntensity.doubleValue
            precipProbability:precipProbability.doubleValue
                   precipType:precipType.doubleValue
               temperatureLow:temperatureLow.doubleValue
              temperatureHigh:temperatureHigh.doubleValue
          apparentTemperature:apparentTemperature.doubleValue
                     humidity:humidity.doubleValue
                     pressure:pressure.doubleValue
                    windspeed:windSpeed.doubleValue
                  windBearing:windBearing
                      uvIndex:uvIndex];

    return self;
}


@end
