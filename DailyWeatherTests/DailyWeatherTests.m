//
//  DailyWeatherTests.m
//  DailyWeatherTests
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSIFileHelper.h"
#import "LSICurrentWeather.h"
#import "LSIDailyForecast.h"
#import "LSIHourlyForecast.h"

@interface DailyWeatherTests : XCTestCase

@end

@implementation DailyWeatherTests

- (void)testCurrentWeather {

    NSData *weatherData = loadFile(@"CurrentWeather.json", [LSICurrentWeather class]);
    NSError *jsonError = nil;
    NSDictionary *weatherDictionary = [NSJSONSerialization JSONObjectWithData:weatherData options:0 error:&jsonError];

    if (jsonError) {
        XCTFail(@"Error parsing JSON: %@", jsonError);
    }

    XCTAssertNotNil(weatherDictionary);
}

- (void)testDailyForecast {

    NSData *weatherData = loadFile(@"DailyWeather.json", [LSIDailyForecast class]);
    NSError *jsonError = nil;
    NSDictionary *weatherDictionary = [NSJSONSerialization JSONObjectWithData:weatherData options:0 error:&jsonError];

    if (jsonError) {
        XCTFail(@"Error parsing JSON: %@", jsonError);
    }

    XCTAssertNotNil(weatherDictionary);
}

- (void)testHourlyForecast {

    NSData *weatherData = loadFile(@"HourlyWeather.json", [LSIHourlyForecast class]);
    NSError *jsonError = nil;
    NSDictionary *weatherDictionary = [NSJSONSerialization JSONObjectWithData:weatherData options:0 error:&jsonError];

    if (jsonError) {
        XCTFail(@"Error parsing JSON: %@", jsonError);
    }

    XCTAssertNotNil(weatherDictionary);
}

@end
