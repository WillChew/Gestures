//
//  SwipeViewController.m
//  Gestures
//
//  Created by Will Chew on 2018-06-14.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (nonatomic) UIView *brown;
@property (nonatomic) UIView *white;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.brown = [[UIView alloc]initWithFrame:CGRectZero];
    self.brown.translatesAutoresizingMaskIntoConstraints = NO;
    self.brown.backgroundColor = UIColor.brownColor;
    [self.view addSubview:self.brown];
    [self.brown.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.brown.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [self.brown.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.brown.heightAnchor constraintEqualToConstant:50].active = YES;
    
    
    self.white = [[UIView alloc]initWithFrame:CGRectZero];
    self.white.translatesAutoresizingMaskIntoConstraints = NO;
    self.white.backgroundColor = UIColor.whiteColor;
    [self.brown addSubview:self.white];
    [self.white.centerXAnchor constraintEqualToAnchor:self.brown.centerXAnchor].active = YES;
    [self.white.centerYAnchor constraintEqualToAnchor:self.brown.centerYAnchor].active = YES;
    [self.white.widthAnchor constraintEqualToAnchor:self.brown.widthAnchor].active = YES;
    [self.white.heightAnchor constraintEqualToConstant:50].active = YES;
    
    self.white.userInteractionEnabled = YES;
    
  //by default it's right
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeGesture:)];
      [self.white addGestureRecognizer:swipeRight];
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeGesture:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.white addGestureRecognizer:swipeLeft];
}

-(void)handleSwipeGesture:(UISwipeGestureRecognizer*)sender {

    if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
//    NSLog(@"%lu", (unsigned long)sender.direction);
    [UIView animateWithDuration:0 animations:^{
        [self.white setFrame:CGRectMake(100, self.white.frame.origin.y, self.white.frame.size.width, self.white.frame.size.height)];
    
    }];
        if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
            [UIView animateWithDuration:0 animations:^{
                [self.white setFrame:CGRectMake(self.white.frame.origin.x-100, self.white.frame.origin.y, self.white.frame.size.width, self.white.frame.size.height)];
            }];
        }
    }
}
@end
