//
//  FunctionViewController.m
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#import "FunctionViewController.h"

@interface FunctionViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView*tableView;
@end

@implementation FunctionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title  =@"功能";
    self.view.backgroundColor = RGBCOLOR(231, 231, 231);
    [self createTableView];

}
-(void)createTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.bounces = NO;
    _tableView.userInteractionEnabled = YES;
    _tableView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_tableView];
}
#pragma mark TableViewDeglete
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return 3;
    }
    
      return 3;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    return 60;
//}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *cellID =@"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//箭头
    if (indexPath.section==0) {
        NSArray *imgArr = @[@"home",@"earth",@"Message"];
        UIImageView *imgView = [[UIImageView alloc]init];
        imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",imgArr[indexPath.row]]];
        [cell.contentView addSubview:imgView];
        [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(@20);
            make.centerY.equalTo(cell.mas_centerY);
            make.height.equalTo(@25);
            make.width.equalTo(@25);
        }];
        NSArray *TextArray =@[@"设置",@"意见反馈",@"联系我们 0535-6929666"];
        UILabel *leftLabel = [[UILabel alloc] init];
        leftLabel.font = [UIFont boldSystemFontOfSize:16];
        leftLabel.text =TextArray[indexPath.row];
        [cell.contentView addSubview:leftLabel];
        [leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(imgView.mas_right).offset(10);
            make.centerY.equalTo(cell.mas_centerY);
            make.width.equalTo(@200);
            make.height.equalTo(@50);
        }];
    }
   else if (indexPath.section==1)
   {
       NSArray *imgArr = @[@"home",@"earth",@"Message"];
       UIImageView *imgView = [[UIImageView alloc]init];
       imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",imgArr[indexPath.row]]];
       [cell.contentView addSubview:imgView];
       [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
           make.left.equalTo(@20);
           make.centerY.equalTo(cell.mas_centerY);
           make.height.equalTo(@25);
           make.width.equalTo(@25);
       }];
       NSArray *TextArray =@[@"当前版本1.0.0",@"清除缓存  7M",@"关于"];
       UILabel *leftLabel = [[UILabel alloc] init];
       leftLabel.font = [UIFont boldSystemFontOfSize:16];
       leftLabel.text =TextArray[indexPath.row];
       [cell.contentView addSubview:leftLabel];
       [leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           make.left.equalTo(imgView.mas_right).offset(10);
           make.centerY.equalTo(cell.mas_centerY);
           make.width.equalTo(@100);
           make.height.equalTo(@50);
       }];

   }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0&&indexPath.row==2) {
        NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",@"05356929666"];
        UIWebView * callWebview = [[UIWebView alloc] init];
        [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
        [self.view addSubview:callWebview];
    }
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
