//
//  CampusViewController.m
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#import "CampusViewController.h"
#import "ZWAdView.h"
@interface CampusViewController ()<UITableViewDataSource,UITableViewDelegate,ZWAdViewDelagate>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)ZWAdView *adView;
@end

@implementation CampusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"校园";
    self.view.backgroundColor = RGBCOLOR(231, 231, 231);
    [self createTableView];
    
}
-(void)createTableView
{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.userInteractionEnabled = YES;
    _tableView.backgroundColor = [UIColor clearColor];
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 300)];
    self.tableView.tableHeaderView = headView;
    headView.backgroundColor = [UIColor redColor];
    //设置广告图片
    self.adView=[[ZWAdView alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width , 300)];
    
    self.adView.delegate=self;
    /**广告链接*/
    NSArray *imageArray=@[@"http://f.hiphotos.baidu.com/image/pic/item/c9fcc3cec3fdfc03777a357fd03f8794a5c226f3.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/d009b3de9c82d1580d1b8f76840a19d8bd3e4258.jpg",@"http://d.hiphotos.baidu.com/image/pic/item/6f061d950a7b02084052e92666d9f2d3562cc85a.jpg",@"http://e.hiphotos.baidu.com/image/pic/item/a6efce1b9d16fdfae3ebb2e3b68f8c5494ee7b33.jpg"];
    self.adView.adDataArray=[NSMutableArray arrayWithArray:imageArray];
    self.adView.pageControlPosition=ZWPageControlPosition_BottomCenter;/**设置圆点的位置*/
    self.adView.hidePageControl=NO;/**设置圆点是否隐藏*/
    self.adView.adAutoplay=YES;/**自动播放是否开启*/
    self.adView.adPeriodTime=2.5;/**时间间隔*/
    self.adView.placeImageSource=@"banner1";/**设置默认广告*/
    [self.adView loadAdDataThenStart];
    [headView addSubview:self.adView];

//    UIImageView *logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"first.jpg"]];
//    logo.contentMode = UIViewContentModeScaleAspectFit;
//    [headView addSubview:logo];
    [self.view addSubview:_tableView];
}
#pragma mark - 广告栏点击
-(void)adView:(ZWAdView *)adView didDeselectAdAtNum:(NSInteger)num{
    NSLog(@"-click index>%ld",num);
}

#pragma mark TableViewDeglete
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 80;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSArray *titleArray = @[@"学院简介",@"院系介绍",@"师资力量",@"校史沿格",@"现任领导",@"校园风光",@"校园招聘",@"学院通讯录"];
    cell.textLabel.text = titleArray[indexPath.row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:18];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.imageView.image = [UIImage imageNamed:@"MessageH"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//箭头
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row ==indexPath.row) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:[NSString stringWithFormat:@"您点击了第%d行",(int)indexPath.row] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
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
