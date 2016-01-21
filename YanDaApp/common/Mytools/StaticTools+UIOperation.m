//
//  StaticTools+UIOperation.m
//  LivingService
//
//  Created by wenbin on 13-10-24.
//  Copyright (c) 2013年 wenbin. All rights reserved.
//

#import "StaticTools+UIOperation.h"

@implementation StaticTools (UIOperation)


/**
 *  检测输入的手机号是否合法
 *
 *  @param phone
 *  @param phone     手机号
 */

+(BOOL)checkMobileWithPhoneNumber:(NSString*)phone
{
    NSString *regex_pattern = @"(13[0-9]|14[57]|15[012356789]|18[0-9]|17[0-9])\\d{8}";
    if( phone == nil || [phone length] != 11 )
        return NO;
    
#if 0
    
    //    NSError *error = NULL;
    //
    //    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber error:&error];
    //    NSRange inputRange = NSMakeRange(0, [phone length]);
    //
    //    NSArray *matches = [detector matchesInString:phone options:0 range:inputRange];
    //    if ([matches count] == 0)
    //        return NO;
    //
    //    NSTextCheckingResult *result = (NSTextCheckingResult *)[matches objectAtIndex:0];
    //
    //    if ([result resultType] == NSTextCheckingTypePhoneNumber && result.range.location == inputRange.location && result.range.length == inputRange.length)
    //        return YES;
    //    else
    //        return NO;
    
    NSError *error = NULL;
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regex_pattern options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSTextCheckingResult *result = [regex firstMatchInString:phone options:0 range:NSMakeRange(0, [phone length])];
    if (result)
    {
        if( result.range.location == 0 && result.range.length == phone.length )
            return YES;
    }
    
    return NO;
#else
    
    
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex_pattern];
    
    return [predicate evaluateWithObject:phone];
#endif
}
/*
 @abstract 校验字符串是否为空
 */
+ (BOOL)isEmptyString:(NSString *)string
{
    if (string == nil||[string isEqual:[NSNull null]])
    {
        return YES;
    }
    
    //去空格之后判断length是否为0
    NSCharacterSet *whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *content = [string stringByTrimmingCharactersInSet:whitespace];
    if ([content length] == 0)
    {
        return YES;
    }
    
    return NO;
}

@end
