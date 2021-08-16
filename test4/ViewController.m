//
//  ViewController.m
//  test4
//
//  Created by liuyaozong on 2021/8/16.
//

#import "ViewController.h"
#import "SecViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我是一级页面";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton new];
    [btn setTitle:@"下一个" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(200, 200, 200, 200);
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
   
    
}

-(void)click {
    SecViewController *vc = [SecViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
