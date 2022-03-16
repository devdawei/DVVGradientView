//
//  DVVGradientView.h
//  DVVGradientView
//
//  Created by David on 2022/2/24.
//

#import <UIKit/UIKit.h>

/// 渐变类型
typedef NS_ENUM(NSUInteger, DVVGradientViewType) {
    /// 由上至下
    DVVGradientViewTypeTopToBottom,
    /// 由左至右
    DVVGradientViewTypeLeftToRight,
    /// 由左上至右下
    DVVGradientViewTypeLeftTopToRightBottom,
    /// 由左下至右上
    DVVGradientViewTypeLeftBottomToRightTop,
};

NS_ASSUME_NONNULL_BEGIN

@interface DVVGradientView : UIView

@property(nullable, copy) NSArray *colors;

@property(nullable, copy) NSArray<NSNumber *> *locations;

@property (nonatomic, assign) DVVGradientViewType type;

@property CGPoint startPoint;

@property CGPoint endPoint;

@property (nonatomic, assign) CGFloat gradientCornerRadius;

@end

NS_ASSUME_NONNULL_END
