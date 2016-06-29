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
 *  字体大小分类
 */
UIKIT_EXTERN NSString * const TCFontTextStyleThemeHead;
UIKIT_EXTERN NSString * const TCFontTextStyleHeadline;
UIKIT_EXTERN NSString * const TCFontTextStyleSubheadline;
UIKIT_EXTERN NSString * const TCFontTextStyleBody;
UIKIT_EXTERN NSString * const TCFontTextStyleFootnote;
UIKIT_EXTERN NSString * const TCFontTextStyleCaption1;
UIKIT_EXTERN NSString * const TCFontTextStyleCaption2;

/**
 *  cell高度分类
 */
UIKIT_EXTERN NSString * const TCCellHeightStyle44;
UIKIT_EXTERN NSString * const TCCellHeightStyle55;
UIKIT_EXTERN NSString * const TCCellHeightStyle66;
UIKIT_EXTERN NSString * const TCCellHeightStyle77;
UIKIT_EXTERN NSString * const TCCellHeightStyle88;

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
 *  通过cell高度类型获取不同UI尺寸的cell高度
 *
 *  @param heightStyle cell高度类型
 *
 *  @return cell高度
 */
+ (CGFloat)cellHeightWithStyle:(NSString *)heightStyle;

/**
 *  通过icon高度类型获取不同UI尺寸的icon size
 *
 *  @param iconSizeStyle icon size类型
 *
 *  @return icon size
 */
+ (CGSize)iconSizeWithStyle:(NSString *)iconSizeStyle;

/**
 *  获取tabBar的高度
 *
 *  @return tabBar高度
 */
+ (CGFloat)tabBarHeight;

/**
 *  获取当前UI尺寸类型
 *
 *  @return UI尺寸类型
 */
+ (NSString *)sizeCategory;

@end
