# XMHVScreen
在不同界面设置横屏或者竖屏，以及之间的切换

#继承UINavigationController新建导航栏
.m文件添加代码
// 屏幕旋转
-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}

此导航栏设置为根控制器

#导入头文件
#import "XMNav.h"

需要竖屏的控制器继承 XMVerticalScreenViewController

需要横屏的控制器继承 XMHorizontalScreenViewController

