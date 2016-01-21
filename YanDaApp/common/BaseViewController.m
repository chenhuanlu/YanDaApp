//
//  BaseViewController.m
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //self.view.backgroundColor = RGBCOLOR(236, 236, 236);
    
    if (!self.navigationItem.hidesBackButton&&self.navigationController.viewControllers.count>1)
    {
        [self initNavgationcontrollerLeftButton];
    }

}
#pragma mark--定制导航栏左侧返回按钮
/**
 *  定制返回按钮  在基类的viewdidload里调用 不需要返回按钮或需定制和基类不一样的按钮时 可在子类里自行处理
 */
- (void)initNavgationcontrollerLeftButton
{
    // [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"ip_anjy_co_s"] forBarMetrics:UIBarMetricsDefault];
    
    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 60, 44)];
    
    UIImageView *backImg = [[UIImageView alloc]initWithFrame:CGRectMake(5, 13, 12, 20)];
    backImg.image = [UIImage imageNamed:@"arrow3"];
    [leftView addSubview:backImg];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 0, 60, 44);
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftView addSubview:backBtn];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftView];
    
}

/**
 *  点击导航栏左侧返回按钮  如有必要  可在子类重写
 */
- (void)back
{
    //[[HttpRequest sharedRequest] cancelLastRequst];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    // [[NSNotificationCenter defaultCenter] postNotificationName:kRestartAnimation object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
