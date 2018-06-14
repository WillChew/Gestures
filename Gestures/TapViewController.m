//
//  TapViewController.m
//  Gestures
//
//  Created by Will Chew on 2018-06-14.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.frame) - (width/2), CGRectGetMidY(self.view.frame) - (width/2), width, height);
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = UIColor.orangeColor;
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewTapped:)];
    [view addGestureRecognizer:tapGesture];
}

-(void)viewTapped:(UITapGestureRecognizer*)sender {
    if ([sender.view.backgroundColor isEqual:UIColor.orangeColor]) {
        sender.view.backgroundColor = UIColor.purpleColor;
    }
    else {
        sender.view.backgroundColor = UIColor.orangeColor;
    }
}


@end
