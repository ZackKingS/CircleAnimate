//
//  ViewController.m
//  AnimateDemo
//
//  Created by 柏超曾 on 2018/6/16.
//  Copyright © 2018年 柏超曾. All rights reserved.
//

#import "ViewController.h"
#import "ZBView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *Item;
@property (weak, nonatomic) IBOutlet ZBView *zview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)start:(id)sender {
    [_zview start];
}

- (IBAction)pause:(id)sender {
    
    [_zview pause];
    
}

- (IBAction)resume:(id)sender {
    
    [_zview resumeAnimation];
}





- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    
    
    
//    CABasicAnimation *anima = [CABasicAnimation animationWithKeyPath:@"transform.scale"];//同上
//    anima.toValue = [NSNumber numberWithFloat:2.0f];
//    anima.duration = 1.0f;
//    [_Item.layer addAnimation:anima forKey:@"scaleAnimation"];
    
//    CAKeyframeAnimation *keyAnimate = [CAKeyframeAnimation animation];
//    keyAnimate.keyPath = @"position";
//
//    // 创建一条路径
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddEllipseInRect(path, NULL, CGRectMake(0, 0, 300, 300));
//    keyAnimate.path = path;
//    // 解决内存问题
//    CGPathRelease(path);
//    keyAnimate.duration = 24.0;
//    keyAnimate.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
//    keyAnimate.rotationMode = kCAAnimationRotateAuto;
//    [_Item.layer addAnimation:keyAnimate forKey:@"path"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
