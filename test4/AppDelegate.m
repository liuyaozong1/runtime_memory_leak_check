//
//  AppDelegate.m
//  test4
//
//  Created by liuyaozong on 2021/8/16.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [ViewController new];
    UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = navc;
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
}



@end
