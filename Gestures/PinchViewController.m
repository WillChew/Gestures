//
//  PinchViewController.m
//  Gestures
//
//  Created by Will Chew on 2018-06-14.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.frame) - (width/2), CGRectGetMidY(self.view.frame) - (height/2), width, height);
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = UIColor.purpleColor;
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(viewPinched:)];
    
    [view addGestureRecognizer:pinchGesture];
}
-(void)viewPinched:(UIPinchGestureRecognizer*)sender {
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    scale = 1.0;
    
}







@end
