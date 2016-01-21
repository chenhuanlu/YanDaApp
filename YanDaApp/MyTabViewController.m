//
//  MyTabViewController.m
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#import "MyTabViewController.h"
#import "CampusViewController.h"
#import "FunctionViewController.h"
#import "ActivityViewController.h"
@interface MyTabViewController ()

@end

@implementation MyTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //1.添加底部自定义的标签栏
    [self setupTabBar];
    //2.添加子控制器
    [self addChildVc];

}
-(void)setupTabBar
{
  
}

-(void)addChildVc
{
    //校园
    CampusViewController *cvc = [[CampusViewController alloc] init];
    [self addChildViewController:cvc title:@"校园" image:@"home" selectedImage:@"homeH"];
    //活动
    ActivityViewController *avc = [[ActivityViewController alloc] init];
    [self addChildViewController:avc title:@"活动" image:@"earth" selectedImage:@"earthH"];
    //功能
    FunctionViewController *fvc = [[FunctionViewController alloc] init];
    [self addChildViewController:fvc title:@"功能" image:@"Message" selectedImage:@"MessageH"];
    
    
}
#pragma mark 添加子控制器的方法

-(void)addChildViewController:(UIViewController *)childVc title:(NSString*)title image:(NSString*)image selectedImage:(NSString*)selectedImage
{
    childVc.tabBarItem.title=title;//导航栏标题
    //childVc.tabBarItem.image=[UIImage imageNamed:image];//标签栏图片
    childVc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];//选中标签栏时的图片
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:childVc];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    childVc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [self addChildViewController:nav];
    
    
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
