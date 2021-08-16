//
//  NSObject+Extension.m
//  test4
//
//  Created by liuyaozong on 2021/8/16.
//

#import "NSObject+Extension.h"

@implementation NSObject (Extension)
-(void)lg_delloc {
    __weak typeof(self)weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        __strong typeof(self)strongSelf = weakSelf;
        NSLog(@"123213123123=----%@",strongSelf);
     });
}
@end
