//
//  SecViewController.m
//  test4
//
//  Created by liuyaozong on 2021/8/16.
//

#import "SecViewController.h"

@interface SecViewController ()
@property (nonatomic,copy) void(^block)(void);
@property (nonatomic,copy) NSString *str;
@end

@implementation SecViewController

//-(void)viewWillAppear:(BOOL)animated
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    self.block = ^{
        self.str = @"123";
        
    };
    
    self.block();
}

-(void)dealloc
{
    NSLog(@"销毁了");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
