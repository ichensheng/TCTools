//
//  TCSizeManager.m
//  TCTools
//
//  Created by 陈 胜 on 16/5/25.
//  Copyright © 2016年 陈胜. All rights reserved.
//

#import "TCSizeManager.h"

/**
 *  存储当前UI尺寸分类key
 */
static NSString * const TCSizeCategory = @"__TCSizeCategory__";

/**
 *  UI尺寸分类，分六档
 */
NSString * const TCSizeCategorySmall = @"TCSizeCategorySmall";
NSString * const TCSizeCategoryMedium = @"TCSizeCategoryMedium";
NSString * const TCSizeCategoryLarge = @"TCSizeCategoryLarge";
NSString * const TCSizeCategoryExtraLarge = @"TCSizeCategoryExtraLarge";
NSString * const TCSizeCategoryExtraExtraLarge = @"TCSizeCategoryExtraExtraLarge";
NSString * const TCSizeCategoryExtraExtraExtraLarge = @"TCSizeCategoryExtraExtraExtraLarge";

/**
 *  字体大小常量
 */
NSString * const TCFontTextStyle17 = @"TCFontTextStyle17";
NSString * const TCFontTextStyle16 = @"TCFontTextStyle16";
NSString * const TCFontTextStyle14 = @"TCFontTextStyle14";
NSString * const TCFontTextStyle12 = @"TCFontTextStyle12";
NSString * const TCFontTextStyle10 = @"TCFontTextStyle10";

/**
 *  cell高度分类
 */
NSString * const TCCellHeightStyle44 = @"TCCellHeightStyle44";
NSString * const TCCellHeightStyle55 = @"TCCellHeightStyle55";
NSString * const TCCellHeightStyle88 = @"TCCellHeightStyle88";

@implementation TCSizeManager

/**
 *  通过字体尺寸类型获取字体大小
 *
 *  @param textStyle 文本字体尺寸类型
 *  @param offset    偏移量
 *
 *  @return 字体大小
 */
+ (CGFloat)fontSizeForTextStyle:(NSString *)textStyle
                         offset:(CGFloat)offset {
    
    CGFloat fontSize = 17.0f; // 字体基准大小
    NSString *sizeCategory = [self sizeCategory];
    static dispatch_once_t onceToken;
    static NSDictionary *fontSizeOffsetDictionary;
    dispatch_once(&onceToken, ^{
        fontSizeOffsetDictionary = @{
                                     TCSizeCategorySmall: @{
                                             TCFontTextStyle10: @(9.375),
                                             TCFontTextStyle12: @(11.25),
                                             TCFontTextStyle14: @(13.125),
                                             TCFontTextStyle16: @(15),
                                             TCFontTextStyle17: @(15.9375)},
                                     
                                     TCSizeCategoryMedium: @{
                                             TCFontTextStyle10: @(10),
                                             TCFontTextStyle12: @(12),
                                             TCFontTextStyle14: @(14),
                                             TCFontTextStyle16: @(16),
                                             TCFontTextStyle17: @(17)},
                                     
                                     TCSizeCategoryLarge: @{
                                             TCFontTextStyle10: @(10.625),
                                             TCFontTextStyle12: @(12.75),
                                             TCFontTextStyle14: @(14.875),
                                             TCFontTextStyle16: @(17),
                                             TCFontTextStyle17: @(18.0625)},
                                     
                                     TCSizeCategoryExtraLarge: @{
                                             TCFontTextStyle10: @(11.25),
                                             TCFontTextStyle12: @(13.5),
                                             TCFontTextStyle14: @(15.75),
                                             TCFontTextStyle16: @(18),
                                             TCFontTextStyle17: @(19.125)},
                                     
                                     TCSizeCategoryExtraExtraLarge: @{
                                             TCFontTextStyle10: @(12.1875),
                                             TCFontTextStyle12: @(14.625),
                                             TCFontTextStyle14: @(17.0625),
                                             TCFontTextStyle16: @(19.5),
                                             TCFontTextStyle17: @(20.71875)},
                                     
                                     TCSizeCategoryExtraExtraExtraLarge: @{
                                             TCFontTextStyle10: @(12.1875),
                                             TCFontTextStyle12: @(14.625),
                                             TCFontTextStyle14: @(17.0625),
                                             TCFontTextStyle16: @(19.5),
                                             TCFontTextStyle17: @(20.71875)}
                                     };
        
    });
    
    CGFloat fontSizeOffset = [fontSizeOffsetDictionary[sizeCategory][textStyle] doubleValue] + offset;
    fontSize += fontSizeOffset;
    return fontSize;
}

/**
 *  通过字体尺寸类型获取字体大小
 *
 *  @param textStyle 文本字体尺寸类型
 *
 *  @return 字体大小
 */
+ (CGFloat)fontSizeForTextStyle:(NSString *)textStyle {
    return [self fontSizeForTextStyle:textStyle offset:0];
}

/**
 *  通过cell高度类型获取不同UI尺寸的cell高度
 *
 *  @param heightStyle cell高度类型
 *
 *  @return cell高度
 */
+ (CGFloat)cellHeightWithStyle:(NSString *)heightStyle {
    NSString *sizeCategory = [self sizeCategory];
    static dispatch_once_t onceToken;
    static NSDictionary *cellHeightDictionary;
    dispatch_once(&onceToken, ^{
        cellHeightDictionary = @{
                                 TCSizeCategorySmall: @{
                                         TCCellHeightStyle44:@(41.5),
                                         TCCellHeightStyle55:@(52),
                                         TCCellHeightStyle88:@(82.5)},
                                     
                                 TCSizeCategoryMedium: @{
                                         TCCellHeightStyle44:@(44),
                                         TCCellHeightStyle55:@(55),
                                         TCCellHeightStyle88:@(88)},
                                 
                                 TCSizeCategoryLarge: @{
                                         TCCellHeightStyle44:@(47),
                                         TCCellHeightStyle55:@(58.5),
                                         TCCellHeightStyle88:@(93.5)},
                                     
                                 TCSizeCategoryExtraLarge: @{
                                         TCCellHeightStyle44:@(49.5),
                                         TCCellHeightStyle55:@(62),
                                         TCCellHeightStyle88:@(99)},
                                     
                                 TCSizeCategoryExtraExtraLarge: @{
                                         TCCellHeightStyle44:@(54),
                                         TCCellHeightStyle55:@(67.5),
                                         TCCellHeightStyle88:@(107.5)},
                                     
                                 TCSizeCategoryExtraExtraExtraLarge: @{
                                         TCCellHeightStyle44:@(54),
                                         TCCellHeightStyle55:@(67.5),
                                         TCCellHeightStyle88:@(107.5)}
                                 };
        
    });
    
    CGFloat cellHeight = [cellHeightDictionary[sizeCategory][heightStyle] doubleValue];
    return cellHeight;
}

/**
 *  通过icon高度类型获取不同UI尺寸的icon size
 *
 *  @param iconSizeStyle icon size类型
 *
 *  @return icon size
 */
+ (CGSize)iconSizeWithStyle:(NSString *)iconSizeStyle {
    return CGSizeZero;
}

/**
 *  获取tabBar的高度
 *
 *  @return tabBar高度
 */
+ (CGFloat)tabBarHeight {
    NSString *sizeCategory = [self sizeCategory];
    static dispatch_once_t onceToken;
    static NSDictionary *tabBarHeightDictionary;
    dispatch_once(&onceToken, ^{
        tabBarHeightDictionary = @{
                                 TCSizeCategorySmall: @(46),
                                 TCSizeCategoryMedium: @(49),
                                 TCSizeCategoryLarge: @(52.5),
                                 TCSizeCategoryExtraLarge: @(55.5),
                                 TCSizeCategoryExtraExtraLarge: @(60),
                                 TCSizeCategoryExtraExtraExtraLarge: @(60)};
        
    });
    
    CGFloat tabBarHeight = [tabBarHeightDictionary[sizeCategory] doubleValue];
    return tabBarHeight;
}

/**
 *  获取当前UI尺寸类型
 *
 *  @return UI尺寸类型
 */
+ (NSString *)sizeCategory {
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSString *sizeCategory = [userDefault objectForKey:TCSizeCategory];
    if (!sizeCategory || [sizeCategory isEqualToString:@""]) {
        sizeCategory = TCSizeCategoryMedium;
    }
    return sizeCategory;
}

@end
