//
//  NSString+Utf8ToUnicode.h
//  AniationOne
//
//  Created by ChenFan on 2018/12/10.
//  Copyright © 2018年 steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Utf8ToUnicode)

+(NSString *)utf8ToUnicode:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
