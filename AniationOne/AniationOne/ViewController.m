//
//  ViewController.m
//  AniationOne
//
//  Created by steven on 17/7/2.
//  Copyright © 2017年 steven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *_btn;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _btn =[UIButton buttonWithType:UIButtonTypeCustom];
    _btn.backgroundColor = [UIColor redColor];
    _btn.frame = CGRectMake(0, 100, 100, 100);
    [self.view addSubview:_btn];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    _btn.frame = CGRectMake(200, 100, 100, 100);
    [UIView commitAnimations];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
