//
//  UINavigationController+Extension.m
//  test4
//
//  Created by liuyaozong on 2021/8/16.
//

#import "UINavigationController+Extension.h"
#import <objc/runtime.h>
#import <objc/message.h>
@implementation UINavigationController (Extension)
+ (void)load
{
    Method orgMethod = class_getInstanceMethod(self, @selector(popViewControllerAnimated:));
    Method swzzMethod = class_getInstanceMethod(self, @selector(lg_popViewControllerAnimated:));
    method_exchangeImplementations(orgMethod, swzzMethod);
}
- (void)lg_popViewControllerAnimated:(BOOL)animated {
    [self lg_popViewControllerAnimated:animated];
    
    NSLog(@"导航控制器 pop");
}

@end
