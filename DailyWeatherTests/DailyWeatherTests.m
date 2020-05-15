//
//  DailyWeatherTests.m
//  DailyWeatherTests
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSICurrentWeather.h"
#import "LSIFileHelper.h"

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

@end
