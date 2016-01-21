//
//  ActivityViewController.m
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#import "ActivityViewController.h"
#define BUTTONTAG 1000
@interface ActivityViewController ()<UIAlertViewDelegate>

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"活动";
    self.view.backgroundColor = RGBCOLOR(231, 231, 231);
    [self createButton];
    
}

-(void)createButton
{
        int interval =(SCREEN_WIDTH-100*3)/4 ;//左右间隔
        int space = 100;//上下间隔
        NSArray *titleArr = @[@"学院新闻",@"教师招聘",@"项目招标",@"户外广告",@"办事指南",@"新生入学",@"报道指南",@"学院风采",@"失误招领",@"公开课",@"学院招生",@"更多"];
        for (int i = 0; i<titleArr.count; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.layer.cornerRadius = 5;
            button.clipsToBounds = YES;
            button.layer.borderWidth = 1;
            button.layer.borderColor = [UIColor redColor].CGColor;
            button.backgroundColor = [UIColor greenColor];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [button setTitle:[NSString stringWithFormat:@"%@",titleArr[i]] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchUpInside];
            //button.titleLabel.adjustsFontSizeToFitWidth = YES;
            button.titleLabel.font = [UIFont systemFontOfSize:19];
            button.tag = BUTTONTAG+i;
            int column = i%3;//列
            int row = i/3;   //行
            button.frame = CGRectMake(column*(interval+100)+interval, row*(30+space)+space,100, 100);
            [self.view addSubview:button];
        }
    
}
-(void)BtnClick:(UIButton *)btn
{
    NSLog(@"%@",btn.titleLabel.text);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:[NSString stringWithFormat:@"%@",btn.titleLabel.text]delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [alert show];
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
