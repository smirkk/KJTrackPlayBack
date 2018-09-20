//
//  SportNode.h
//  TrackPlayBack
//
//  Created by kouhanjin on 2018/6/23.
//  Copyright © 2018年 khj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SportNode : NSObject

/** 经纬度 */
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

/** 方向（角度）*/
@property (nonatomic, assign) CGFloat angle;

/** 距离 */
@property (nonatomic, assign) CGFloat distance;

/** 速度 */
@property (nonatomic, assign) CGFloat speed;

+ (instancetype)nodeWithDictionary:(NSDictionary *)dict;

@end
