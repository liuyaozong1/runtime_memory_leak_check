//
//  UIViewController+Extension.m
//  test4
//
//  Created by liuyaozong on 2021/8/16.
//

#import "UIViewController+Extension.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "NSObject+Extension.h"
@implementation UIViewController (Extension)

+ (void)load {
    Method orgMethod = class_getInstanceMethod(self, @selector(viewWillAppear:));
    Method swzzMethod = class_getInstanceMethod(self, @selector(lg_viewWillAppear:));
    method_exchangeImplementations(orgMethod, swzzMethod);
    
    
    Method org2Method = class_getInstanceMethod(self, @selector(viewDidDisappear:));
    Method swzz2Method = class_getInstanceMethod(self, @selector(lg_viewDidDisappear:));
    method_exchangeImplementations(org2Method, swzz2Method);
    
}
//即将显示
-(void)lg_viewWillAppear:(BOOL)animated {
    [self lg_viewWillAppear:animated];
}

-(void)lg_viewDidDisappear:(BOOL)animated {
    [self lg_viewDidDisappear:animated];
    [self lg_delloc];
}


@end
