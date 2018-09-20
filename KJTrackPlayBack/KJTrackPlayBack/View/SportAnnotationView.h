//
//  SportAnnotationView.h
//  TrackPlayBack
//
//  Created by kouhanjin on 2018/6/23.
//  Copyright © 2018年 khj. All rights reserved.
//

#import <BaiduMapAPI_Map/BMKMapComponent.h>


typedef void (^ Completion)(void);

@class SportNode;

@interface SportAnnotationView : BMKAnnotationView

/** 轨迹点数组 */
@property (nonatomic, strong) NSArray<SportNode *> *sportNodes;
/** 轨迹回放完成回调 */
@property (nonatomic, copy) Completion completion;

/** 开始 */
- (void)start;

/** 暂停 */
- (void)pause;

/** 停止 */
- (void)stop;

@end
