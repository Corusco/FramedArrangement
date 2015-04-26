//
//  ViewController.m
//  FramedArrangement
//
//  Created by Justin Huntington on 4/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.redView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.blueView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)layoutSquares
{
    CGFloat squareWidth = self.view.frame.size.width/2;
    CGFloat squareHeight = self.view.frame.size.height/2;
    
    self.redView.frame = CGRectMake(0, 0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, 0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0, squareHeight, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
}

-(void)layoutHorzontalRectangles
{
    CGFloat rectangleWidth = self.view.frame.size.width;
    CGFloat rectangleHeight = self.view.frame.size.height/4;
    
    self.redView.frame = CGRectMake(0, 0, rectangleWidth, rectangleHeight);
    self.greenView.frame = CGRectMake(0, rectangleHeight, rectangleWidth, rectangleHeight);
    self.blueView.frame = CGRectMake(0, rectangleHeight*2, rectangleWidth, rectangleHeight);
    self.yellowView.frame = CGRectMake(0, rectangleHeight*3, rectangleWidth, rectangleHeight);
}

-(void)layoutVerticalRectangles
{
    CGFloat rectangleWidth = self.view.frame.size.width/4;
    CGFloat rectangleHeight = self.view.frame.size.height;
    
    self.redView.frame = CGRectMake(0, 0, rectangleWidth, rectangleHeight);
    self.greenView.frame = CGRectMake(rectangleWidth, 0, rectangleWidth, rectangleHeight);
    self.blueView.frame = CGRectMake(rectangleWidth*2, 0, rectangleWidth, rectangleHeight);
    self.yellowView.frame = CGRectMake(rectangleWidth*3, 0, rectangleWidth, rectangleHeight);
    
}

-(void)layoutDiagonalRectangles
{
    CGFloat rectangleWidth = self.view.frame.size.width/4;
    CGFloat rectangleHeight = self.view.frame.size.height/4;
    
    self.redView.frame = CGRectMake(0, 0, rectangleWidth, rectangleHeight);
    self.greenView.frame = CGRectMake(rectangleWidth, rectangleHeight, rectangleWidth, rectangleHeight);
    self.blueView.frame = CGRectMake(rectangleWidth*2, rectangleHeight*2, rectangleWidth, rectangleHeight);
    self.yellowView.frame = CGRectMake(rectangleWidth*3, rectangleHeight*3, rectangleWidth, rectangleHeight);
}


@end
