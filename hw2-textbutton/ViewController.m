//
//  ViewController.m
//  hw2-textbutton
//
//  Created by Bingqing Xie on 8/2/17.
//  Copyright © 2017 Bingqing Xie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor lightGrayColor];
    UIView*pic=[[UIView alloc] initWithFrame:CGRectMake(50, 50, 350, 350)];
    pic.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"smile.jpg"]];
    [self.view addSubview:pic];
    
    [self setuplable];
    [self setuptextfield];
    [self setupbutton];
    
}

-(void)setuplable{
    self.label=[[UILabel alloc] initWithFrame:CGRectMake(100, 450, 250, 250)];
    [self.view addSubview:self.label];
    
    self.label.text=@"please enter your name";
}

-(void)setuptextfield{
    self.textfield=[[UITextField alloc] initWithFrame:CGRectMake(100, 500, 100, 40)];
    [self.view addSubview:self.textfield];
    
    self.textfield.placeholder=@"...";
    self.textfield.backgroundColor=[UIColor whiteColor];
}

-(void)setupbutton{
    self.button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame=CGRectMake(100, 650, 50, 50);
    self.button.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:self.button];
    [self.button setTitle:@"click" forState:UIControlStateNormal];
    
    [self.button addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonclick
{
    self.label.text=[NSString stringWithFormat:@"%@,%@", @"hello",self.textfield.text];
}



@end
