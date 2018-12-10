//
//  NSString+Utf8ToUnicode.m
//  AniationOne
//
//  Created by ChenFan on 2018/12/10.
//  Copyright © 2018年 steven. All rights reserved.
//

#import "NSString+Utf8ToUnicode.h"

@implementation NSString (Utf8ToUnicode)

+(NSString *)utf8ToUnicode:(NSString *)string{
    NSUInteger length = [string length];
    NSMutableString *str = [NSMutableString stringWithCapacity:0];
    for (int i = 0;i < length; i++){
        NSMutableString *s = [NSMutableString stringWithCapacity:0];
        unichar _char = [string characterAtIndex:i];
        // 判断是否为英文和数字
        if (_char <= '9' && _char >='0'){
            [s appendFormat:@"%@",[string substringWithRange:NSMakeRange(i,1)]];
        }else if(_char >='a' && _char <= 'z'){
            [s appendFormat:@"%@",[string substringWithRange:NSMakeRange(i,1)]];
        }else if(_char >='A' && _char <= 'Z'){
            [s appendFormat:@"%@",[string substringWithRange:NSMakeRange(i,1)]];
        }else{
            // 中文和字符
            [s appendFormat:@"\\u%x",[string characterAtIndex:i]];
            // 不足位数补0 否则解码不成功
            if(s.length == 4) {
                [s insertString:@"00" atIndex:2];
            } else if (s.length == 5) {
                [s insertString:@"0" atIndex:2];
            }
        }
        [str appendFormat:@"%@", s];
    }
    return str;
}

@end
