//
//  AppDelegate.m
//  XMHVScreen
//
//  Created by min on 2017/7/28.
//  Copyright © 2017年 min. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "XMNavViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 1.创建窗口
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = [UIColor whiteColor];
    
    // 2.直接进入主页面
    ViewController *mainVC = [[ViewController alloc] init];
    XMNavViewController *navVC = [[XMNavViewController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController = navVC;
    
    // 3.显视窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
