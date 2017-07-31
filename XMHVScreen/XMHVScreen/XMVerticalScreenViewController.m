//
//  XMVerticalScreenViewController.m
//  XMHVScreen
//
//  Created by min on 2017/7/28.
//  Copyright © 2017年 min. All rights reserved.
//

#import "XMVerticalScreenViewController.h"

@interface XMVerticalScreenViewController ()

@end

@implementation XMVerticalScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    // 设置竖向方向
    [self setDirection];
}

// 设置竖向方向
- (void)setDirection{
    
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationMaskPortrait];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

//是否可以旋转
-(BOOL)shouldAutorotate
{
    return YES;
}


@end
