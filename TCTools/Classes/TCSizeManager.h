//
//  TCSizeManager.h
//  TCTools
//
//  Created by 陈 胜 on 16/5/25.
//  Copyright © 2016年 陈胜. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  UI大小分类，分六档
 */
UIKIT_EXTERN NSString * const TCSizeCategorySmall;
UIKIT_EXTERN NSString * const TCSizeCategoryMedium;
UIKIT_EXTERN NSString * const TCSizeCategoryLarge;
UIKIT_EXTERN NSString * const TCSizeCategoryExtraLarge;
UIKIT_EXTERN NSString * const TCSizeCategoryExtraExtraLarge;
UIKIT_EXTERN NSString * const TCSizeCategoryExtraExtraExtraLarge;

/**
 *  字体大小分类
 */
UIKIT_EXTERN NSString * const TCFontTextStyleHeadline;
UIKIT_EXTERN NSString * const TCFontTextStyleSubheadline;
UIKIT_EXTERN NSString * const TCFontTextStyleBody;
UIKIT_EXTERN NSString * const TCFontTextStyleFootnote;
UIKIT_EXTERN NSString * const TCFontTextStyleCaption1;
UIKIT_EXTERN NSString * const TCFontTextStyleCaption2;

@interface TCSizeManager : NSObject

/**
 *  通过字体尺寸类型获取字体大小
 *
 *  @param textStyle 文本字体尺寸类型
 *  @param offset    偏移量
 *
 *  @return 字体大小
 */
+ (CGFloat)fontSizeForTextStyle:(NSString *)textStyle
                         offset:(CGFloat)offset;

/**
 *  通过字体尺寸类型获取字体大小
 *
 *  @param textStyle 文本字体尺寸类型
 *
 *  @return 字体大小
 */
+ (CGFloat)fontSizeForTextStyle:(NSString *)textStyle;

/**
 *  获取当前UI尺寸类型
 *
 *  @return UI尺寸类型
 */
+ (NSString *)sizeCategory;

@end
