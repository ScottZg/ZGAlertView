#### ZGAlertView

##### Foreword
Do not inflow of the pop-up box, there are two ways:   modifing the frame directly and Setting uiview animation; Using UIKit mechanics;

##### Example
![Example](https://ooo.0o0.ooo/2017/02/08/589ae830c5bf1.gif)

#####  How to use
```
- (IBAction)showStyle1Action:(UIButton *)sender {
    _style1AlertView = [[ZGAlertView alloc] init];
    
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 400)];
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setTitle:@"Close" forState:UIControlStateNormal];
    [closeButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(hideTopAction) forControlEvents:UIControlEventTouchUpInside];
    closeButton.frame = CGRectMake(200-47-10, 10, 47, 22);
    [customView addSubview:closeButton];
    _style1AlertView.containerView = customView;
    
    [_style1AlertView show];
    
}
- (void)hideTopAction {
    [_style1AlertView hide];
}
```
you need to write the containerView yourself,than set it to _ styleAlertView.containerView.This alertView only provide show or hide style.so it is very customizable.
