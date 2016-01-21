//
//  BaseViewController.h
//  YanDaApp
//
//  Created by 殷福帅 on 16/1/6.
//  Copyright © 2016年 chl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
#pragma mark--定制导航栏左侧返回按钮
/**
 *  定制返回按钮  在基类的viewdidload里调用 不需要返回按钮或需定制和基类不一样的按钮时 可在子类里自行处理
 */
- (void)initNavgationcontrollerLeftButton;
@end
