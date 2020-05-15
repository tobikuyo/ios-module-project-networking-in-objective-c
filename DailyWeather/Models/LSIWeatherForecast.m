//
//  LSIWeatherForecast.m
//  DailyWeather
//
//  Created by Tobi Kuyoro on 15/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIWeatherForecast.h"

@implementation LSIWeatherForecast

-(instancetype)initWithCurrentWeather:(LSICurrentWeather *)currentWeather
                       dailyForecasts:(NSArray *)dailyForecasts
                      hourlyForecasts:(NSArray *)hourlyForecasts {
    self = [super init];
    if (self) {
        _currentWeather = currentWeather;
        _dailyForecasts = dailyForecasts;
        _hourlyForecasts = hourlyForecasts;
    }

    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    LSICurrentWeather *currentWeather = dictionary[@"currently"];

    NSDictionary *daily = dictionary[@"daily"];
    NSArray *dailyForecasts = daily[@"data"];

    NSDictionary *hourly = dictionary[@"hourly"];
    NSArray *hourlyForecasts = hourly[@"data"];

    self = [self initWithCurrentWeather:currentWeather
                         dailyForecasts:dailyForecasts
                        hourlyForecasts:hourlyForecasts];

    return self;
}

@end
