//
//  LSIWeatherFetcher.m
//  DailyWeather
//
//  Created by Tobi Kuyoro on 15/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIWeatherFetcher.h"
#import "LSICurrentWeather.h"
#import "LSIErrors.h"
#import "LSILog.h"

static NSString *baseURLString = @"https://api.darksky.net/forecast/a901e08529e81634558fc13ca0e7292c";

@implementation LSIWeatherFetcher

- (instancetype)init {
    self = [super init];
    if (self) {

    }

    return self;
}

- (void)fetchWeatherUsingLocation:(CLLocation *)location completionBlock:(LSIWeatherFetchCompletionBlock)completionBlock {
    NSURL *url = [NSURL URLWithString:baseURLString];
    double latitude = location.coordinate.latitude;
    double longitude = location.coordinate.longitude;

    NSString *latitudeString = [NSString stringWithFormat:@"%f,", latitude];
    NSString *longitudeString = [NSString stringWithFormat:@"%f", longitude];

    [url URLByAppendingPathComponent:latitudeString];
    [url URLByAppendingPathComponent:longitudeString];

    NSURLSessionDataTask *task = [NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"url: %@", url);

        if (error) {
            completionBlock(nil, error);
            return;
        }

        if(!data) {
            NSError *dataError = errorWithMessage(@"No data in URL response for weather", LSIDataNilError);
            completionBlock(nil, dataError);
            return;
        }

        NSError *jsonError = nil;

        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];

        if (jsonError) {
            completionBlock(nil, jsonError);
            return;
        }

        LSICurrentWeather *currentWeather = [[LSICurrentWeather alloc] initWithDictionary:json];
        completionBlock(currentWeather, nil);
    }];

    [task resume];
}

@end
