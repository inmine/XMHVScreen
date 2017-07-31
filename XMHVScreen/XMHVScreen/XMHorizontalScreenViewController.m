//
//  XMHorizontalScreenViewController.m
//  XMHVScreen
//
//  Created by min on 2017/7/28.
//  Copyright © 2017年 min. All rights reserved.
//

#import "XMHorizontalScreenViewController.h"

@interface XMHorizontalScreenViewController ()

@end

@implementation XMHorizontalScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    // 设置横向方向
    [self setDirection];
    
}

// 设置竖横向方向
- (void)setDirection{
    
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeRight;
}

//是否可以旋转
-(BOOL)shouldAutorotate
{
    return YES;
}

@end
