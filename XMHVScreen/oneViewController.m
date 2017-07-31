//
//  oneViewController.m
//  XMHVScreen
//
//  Created by min on 2017/7/28.
//  Copyright © 2017年 min. All rights reserved.
//

#import "oneViewController.h"
#import "twoViewController.h"

@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"横屏";
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    twoViewController *test = [[twoViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}





@end
