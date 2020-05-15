//
//  LSIWeatherFetcher.h
//  DailyWeather
//
//  Created by Tobi Kuyoro on 15/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "LSICurrentWeather.h"


NS_ASSUME_NONNULL_BEGIN

typedef void (^LSIWeatherFetchCompletionBlock)(LSICurrentWeather * _Nullable currentWeather, NSError * _Nullable error);

@interface LSIWeatherFetcher : NSObject

- (void)fetchWeatherUsingLocation:(CLLocation *)location
                  completionBlock:(LSIWeatherFetchCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
