//
//  ViewController.m
//  ZGAlertViewDemo
//
//  Created by zhanggui on 2017/2/8.
//  Copyright © 2017年 zhanggui. All rights reserved.
//

#import "ViewController.h"
#import "ZGAlertView.h"
@interface ViewController ()



@property (nonatomic,strong)ZGAlertView *style1AlertView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - style1 alertView
- (IBAction)showStyle1Action:(UIButton *)sender {
    _style1AlertView = [[ZGAlertView alloc] init];
    //custom view
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 400)];
   //close button
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setTitle:@"Close" forState:UIControlStateNormal];
    [closeButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(hideTopAction) forControlEvents:UIControlEventTouchUpInside];
    closeButton.frame = CGRectMake(200-47-10, 10, 47, 22);
    [customView addSubview:closeButton];
  //label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(customView.center.x-45, customView.center.y-20, 90, 40)];
    
    label.text = @"Hello world";
    [customView addSubview:label];
    
    _style1AlertView.containerView = customView;
    [_style1AlertView show];
    
}
- (void)hideTopAction {
    [_style1AlertView hide];
}
#pragma mark - lazy load


@end
