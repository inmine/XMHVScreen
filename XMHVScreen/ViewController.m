//
//  ViewController.m
//  XMHVScreen
//
//  Created by min on 2017/7/28.
//  Copyright © 2017年 min. All rights reserved.
//

#import "ViewController.h"
#import "oneViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"横竖屏";
    
    UIButton *btn1 = [[UIButton alloc] init];
    btn1.backgroundColor = [UIColor redColor];
    [btn1 setTitle:@"横屏或竖屏" forState:UIControlStateNormal];
    btn1.frame = CGRectMake(100, 200, 100, 60);
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
}

- (void)btn1Click{
    
    oneViewController *test = [[oneViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}



@end
