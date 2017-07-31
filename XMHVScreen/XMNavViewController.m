//
//  XMNavViewController.m
//  XMHVScreen
//
//  Created by min on 2017/7/31.
//  Copyright © 2017年 min. All rights reserved.
//

#import "XMNavViewController.h"

@interface XMNavViewController ()

@end

@implementation XMNavViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}


// 屏幕旋转
-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}


@end
