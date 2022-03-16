//
//  DVVGradientView.m
//  DVVGradientView
//
//  Created by David on 2022/2/24.
//

#import "DVVGradientView.h"

@interface DVVGradientView ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@end

@implementation DVVGradientView

@dynamic gradientCornerRadius;
@dynamic colors, locations, startPoint, endPoint;

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.layer addSublayer:self.gradientLayer];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _gradientLayer.frame = self.bounds;
}

- (void)setType:(DVVGradientViewType)type {
    switch (type) {
        case DVVGradientViewTypeTopToBottom: {
            self.startPoint = CGPointMake(1, 0);
            self.endPoint = CGPointMake(1, 1);
            break;
        }
        case DVVGradientViewTypeLeftToRight: {
            self.startPoint = CGPointMake(0, 1);
            self.endPoint = CGPointMake(1, 1);
            break;
        }
        case DVVGradientViewTypeLeftTopToRightBottom: {
            self.startPoint = CGPointMake(0, 0);
            self.endPoint = CGPointMake(1, 1);
            break;
        }
        case DVVGradientViewTypeLeftBottomToRightTop: {
            self.startPoint = CGPointMake(0, 1);
            self.endPoint = CGPointMake(1, 0);
            break;
        }
    }
}

- (void)setGradientCornerRadius:(CGFloat)gradientCornerRadius {
    _gradientLayer.masksToBounds = YES;
    _gradientLayer.cornerRadius = gradientCornerRadius;
}

- (CGFloat)gradientCornerRadius {
    return _gradientLayer.cornerRadius;
}

- (void)setColors:(NSArray *)colors {
    _gradientLayer.colors = colors;
}

- (NSArray *)colors {
    return _gradientLayer.colors;
}

- (void)setLocations:(NSArray<NSNumber *> *)locations {
    _gradientLayer.locations = locations;
}

- (NSArray<NSNumber *> *)locations {
    return _gradientLayer.locations;
}

- (void)setStartPoint:(CGPoint)startPoint {
    _gradientLayer.startPoint = startPoint;
}

- (CGPoint)startPoint {
    return _gradientLayer.startPoint;
}

- (void)setEndPoint:(CGPoint)endPoint {
    _gradientLayer.endPoint = endPoint;
}

- (CGPoint)endPoint {
    return _gradientLayer.endPoint;
}

- (CAGradientLayer *)gradientLayer {
    if (!_gradientLayer) {
        _gradientLayer = [CAGradientLayer layer];
        _gradientLayer.startPoint = CGPointMake(1, 0);
        _gradientLayer.endPoint = CGPointMake(1, 1);
    }
    return _gradientLayer;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
