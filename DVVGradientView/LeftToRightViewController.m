//
//  LeftToRightViewController.m
//  DVVGradientView
//
//  Created by David on 2022/2/24.
//

#import "LeftToRightViewController.h"
#import "DVVGradientView.h"

@interface LeftToRightViewController ()

@property (nonatomic, strong) DVVGradientView *gradientView;

@end

@implementation LeftToRightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    CGSize size = UIScreen.mainScreen.bounds.size;
    self.gradientView.frame = CGRectMake(10, 200, size.width - 10*2, 300);
    [self.view addSubview:self.gradientView];
}

- (DVVGradientView *)gradientView {
    if (!_gradientView) {
        _gradientView = [[DVVGradientView alloc] init];
        _gradientView.colors = @[
            (id)[UIColor redColor].CGColor,
            (id)[UIColor yellowColor].CGColor,
        ];
        _gradientView.locations = @[@0, @1];
        _gradientView.type = DVVGradientViewTypeLeftToRight;
    }
    return _gradientView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
