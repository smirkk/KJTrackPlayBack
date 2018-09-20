//
//  AppDelegate.m
//  KJTrackPlayBack
//
//  Created by kouhanjin on 2018/9/20.
//  Copyright © 2018年 khj. All rights reserved.
//

#import "AppDelegate.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>

@interface AppDelegate ()<BMKGeneralDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    BMKMapManager *mapManger = [[BMKMapManager alloc] init];
    BOOL ret = [mapManger start:@"9FQGfIxfYPibgKsGOchIwHyWIvoRLaYC" generalDelegate:self];
    if (!ret) NSLog(@"start failed!");
    
    return YES;
}

#pragma mark -- BMKGeneral Delegate
- (void)onGetNetworkState:(int)iError
{
    if (iError != 0) NSLog(@"onGetNetworkState:%d", iError);
}

- (void)onGetPermissionState:(int)iError
{
    if (iError != 0) NSLog(@"onGetPermissionState:%d", iError);
}

@end
