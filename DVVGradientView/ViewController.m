//
//  ViewController.m
//  DVVGradientView
//
//  Created by David on 2022/2/24.
//

#import "ViewController.h"
#import "TopToBottomViewController.h"
#import "LeftToRightViewController.h"
#import "LeftTopToRightBottomViewController.h"
#import "LeftBottomToRightTopViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"渐变类型";
    
    self.tableView.frame = UIScreen.mainScreen.bounds;
    [self.view addSubview:self.tableView];
    
    self.dataArray = @[@"由上至下", @"由左至右", @"由左上至右下", @"由左下至右上"].mutableCopy;
}

#pragma mark - UITableViewDataSource, UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        TopToBottomViewController *vc = [[TopToBottomViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (indexPath.row == 1) {
        LeftToRightViewController *vc = [[LeftToRightViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (indexPath.row == 2) {
        LeftTopToRightBottomViewController *vc = [[LeftTopToRightBottomViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (indexPath.row == 3) {
        LeftBottomToRightTopViewController *vc = [[LeftBottomToRightTopViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

#pragma mark -

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
        [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"Cell"];
    }
    return _tableView;
}

@end
