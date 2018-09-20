//
//  SportNode.m
//  TrackPlayBack
//
//  Created by kouhanjin on 2018/6/23.
//  Copyright © 2018年 khj. All rights reserved.
//

#import "SportNode.h"

@implementation SportNode

+ (instancetype)nodeWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        
        _coordinate = CLLocationCoordinate2DMake([dict[@"lat"] doubleValue], [dict[@"lon"] doubleValue]);
        _angle = [dict[@"angle"] doubleValue];
        _distance = [dict[@"distance"] doubleValue];
        _speed = [dict[@"speed"] doubleValue];

    }
    return self;
}

@end
