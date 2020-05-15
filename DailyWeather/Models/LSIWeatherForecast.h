//
//  LSIWeatherForecast.h
//  DailyWeather
//
//  Created by Tobi Kuyoro on 15/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSICurrentWeather.h"
#import "LSIDailyForecast.h"
#import "LSIHourlyForecast.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIWeatherForecast : NSObject

@property LSICurrentWeather *currentWeather;
@property NSArray<LSIDailyForecast *> *dailyForecasts;
@property NSArray<LSIHourlyForecast *> *hourlyForecasts;

-(instancetype)initWithCurrentWeather:(LSICurrentWeather *)currentWeather
                       dailyForecasts:(NSArray *)dailyForecasts
                      hourlyForecasts:(NSArray *)hourlyForecasts;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
