//
//  StaticTools+UIOperation.h
//  LivingService
//
//  Created by wenbin on 13-10-24.
//  Copyright (c) 2013年 wenbin. All rights reserved.
//
/*----------------------------------------------------------------
 // Copyright (
 // 版权所有。
 //
 // 文件功能描述：具体业务相关的工具函数
 
 // 创建标识：
 // 修改标识：
 // 修改日期：
 // 修改描述：
 //
 ----------------------------------------------------------------*/
#import "StaticTools.h"
@interface StaticTools (UIOperation)


/**
 *  在输入框上面加一条  完成按钮和提示信息
 *
 *  @param txtField
 *  @param mess     提示信息
 */
//+ (void)addTopViewInTextFeild:(UITextField*)txtField withMessage:(NSString*)mess;

/**
 *  检测输入的手机号是否合法
 *
 *  @param phone
 *  @param phone     手机号
 */
+(BOOL)checkMobileWithPhoneNumber:(NSString*)phone;

/*
 @abstract 校验字符串是否为空
 */
+ (BOOL)isEmptyString:(NSString *)string;
/**
 *  弹出登录页面
 *
 *  @param sucBlock  登录成功后回调
 *  @param failBlock 登录失败后回调
 */

@end
