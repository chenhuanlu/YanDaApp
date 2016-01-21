//
//  MyToolsViewController.m
//  TravelUrgent
//
//  Created by developer on 15/11/3.
//  Copyright © 2015年 bianwoyou. All rights reserved.
//

#import "MyToolsViewController.h"

@interface MyToolsViewController ()

@end

@implementation MyToolsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
/**
 *  图片缩放
 *
 *  @param image   原始图片
 *  @param newSize 缩放的大小
 *
 *  @return
 */
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
{
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}
/**
 *  在输入框上面加一条  完成按钮和提示信息
 *
 *  @param txtField
 *  @param mess     提示信息
 */
+ (void)addTopViewInTextFeild:(UITextField*)txtField withMessage:(NSString*)mess
{
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 45)];
    topView.backgroundColor = RGBACOLOR(201, 204, 213, 1);
    
    //顶部黑条
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 1)];
    lineView.alpha  = 0.3;
    lineView.backgroundColor = [UIColor darkGrayColor];
    [topView addSubview:lineView];
    
    //中间提示信息
    UILabel *messLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, SCREEN_WIDTH, 30)];
    messLabel.font = [UIFont systemFontOfSize:15];
    messLabel.textAlignment = NSTextAlignmentCenter;
    messLabel.text = mess;
    messLabel.textColor = [UIColor darkGrayColor];
    [topView addSubview:messLabel];
    
    //右侧按钮
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(SCREEN_WIDTH-50-20, 10, 50, 30);
    rightBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightBtn setTitle:@"完成" forState:UIControlStateNormal];
    [rightBtn addTarget:txtField action:@selector(resignFirstResponder) forControlEvents:UIControlEventTouchUpInside];
    [topView addSubview:rightBtn];
    
    txtField.inputAccessoryView = topView;
    
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
