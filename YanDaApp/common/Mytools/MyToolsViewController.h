//
//  MyToolsViewController.h
//  TravelUrgent
//
//  Created by developer on 15/11/3.
//  Copyright © 2015年 bianwoyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyToolsViewController : UIViewController
/*
 *
 * 图片缩放
 */
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;

/**
 *  在输入框上面加一条  完成按钮和提示信息
 *
 *  @param txtField
 *  @param mess     提示信息
 */
+ (void)addTopViewInTextFeild:(UITextField*)txtField withMessage:(NSString*)mess;


@end
