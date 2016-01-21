//
//  define.h
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#ifndef define_h
#define define_h


#endif /* define_h */
#define SCREEN_HEIGHT [UIScreen mainScreen ].bounds.size.height //屏幕高度
#define SCREEN_WIDTH  [UIScreen mainScreen ].bounds.size.width //屏幕宽度
//颜色设置
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
//手机尺寸
#define iPhone4 ([UIScreen mainScreen].bounds.size.height == 480 ? YES : NO)
#define iPhone5 ([UIScreen mainScreen].bounds.size.height == 568 ? YES : NO)
#define iPhone6 ([UIScreen mainScreen].bounds.size.height == 667 ? YES : NO)
#define iPhone6Plus ([UIScreen mainScreen].bounds.size.height == 736 ? YES : NO)

// NSUserDefault
#define PASSWORD							 @"passwd"         //密码
#define PHONENUM							 @"telno"            // 手机号
#define CUSTOMERID                            @"customerId"//用户ID

// 登录相关
#define kIsLogin                        @"islogin" //是否登录 @"1" 已登录   @"0" 未登录
//tableViewCell的高度
#define kCellHeight (([UIScreen mainScreen ].bounds.size.height==480)?45.0:(([UIScreen mainScreen ].bounds.size.height==568)?45.0:([UIScreen mainScreen ].bounds.size.height==667?55.0:65.0)))

//所有请求参数

#define PARAMS @{@"sourceId":self.tolietID,@"dId":@"1234",@"curLng":[NSString stringWithFormat:@"%f",_mylng ],@"curLat":[NSString stringWithFormat:@"%f",_mylat ],@"version":[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"],@"deviceType":@"iOS"}



//URL
#define HOST @"http://dev.bianwoyou.com/ytx"
//#define HOST @"http://192.168.18.110:8086/ytx"
//
//加载网络图片前缀
#define IMGURL @"http://cdn.img.bianwoyou.com/images/ytx/"
//导航栏高度
#define NavBarHeight 64
//设备相关

#define UserDefaults [NSUserDefaults standardUserDefaults]
#define ApplicationDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)
#define  CUSID [UserDefaults objectForKey:CUSTOMERID]
