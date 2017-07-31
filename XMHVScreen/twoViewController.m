//
//  twoViewController.m
//  XMHVScreen
//
//  Created by min on 2017/7/28.
//  Copyright © 2017年 min. All rights reserved.
//

#import "twoViewController.h"
#import "threeViewController.h"

@interface twoViewController ()

@end

@implementation twoViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"2竖屏";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    threeViewController *test = [[threeViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    
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
