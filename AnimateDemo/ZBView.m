//
//  ZBView.m
//  AnimateDemo
//
//  Created by 柏超曾 on 2018/6/16.
//  Copyright © 2018年 柏超曾. All rights reserved.
//

#import "ZBView.h"

@interface ZBView ()<CAAnimationDelegate>

@property (nonatomic, weak) CAShapeLayer *lineChartLayer;

@end

@implementation ZBView

- (void)animationDidStart:(CAAnimation *)anim
{
    
}


- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    
}


- (void)drawRect:(CGRect)rect {
    
   
    
  
//    [self circle];

//    [self line];
    
    [self anni];
}

-(void)anni
{
    
    UIColor *color = [UIColor whiteColor];
    [color set];
    

    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(90,90) radius:90 startAngle:-M_PI_2 endAngle:M_PI_2*3  clockwise:YES];
    
    path.lineWidth = 1.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path stroke];
    
    CAShapeLayer *lineChartLayer = [CAShapeLayer layer];
    self.lineChartLayer = lineChartLayer;
    lineChartLayer.path = path.CGPath;
    lineChartLayer.fillColor = [[UIColor clearColor] CGColor];
    lineChartLayer.strokeColor = [UIColor redColor].CGColor;
    
    // 设置路径宽度为0，使线条不显示出来
    lineChartLayer.lineWidth = 0;
    lineChartLayer.lineCap = kCALineCapRound;
    
   [self.layer addSublayer:lineChartLayer];
    
  
}


-(void)start{
    
    self.lineChartLayer.lineWidth = 5;
    
    // 设置动画的相关属性
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.duration = 5;
    pathAnimation.repeatCount = 10;
    pathAnimation.removedOnCompletion = NO;
    pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
    pathAnimation.delegate = self;
    
    [self.lineChartLayer addAnimation:pathAnimation forKey:@"strokeEnd"];
    
}



-(void)pause{
    
    CFTimeInterval pauseTime = [self.layer convertTime:CACurrentMediaTime() fromLayer:nil];
    
    //2.设置动画的时间偏移量，指定时间偏移量的目的是让动画定格在该时间点的位置
    self.layer.timeOffset = pauseTime;
    
    //3.将动画的运行速度设置为0， 默认的运行速度是1.0
    self.layer.speed = 0;
}


- (void)resumeAnimation {
    
    //1.将动画的时间偏移量作为暂停的时间点
    CFTimeInterval pauseTime = self.layer.timeOffset;
    
    //2.计算出开始时间
    CFTimeInterval begin = CACurrentMediaTime() - pauseTime;
    
    [self.layer setTimeOffset:0];
    [self.layer setBeginTime:begin];
    
    self.layer.speed = 1;
}

-(void)line{
    
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 10)];
    [path addLineToPoint:CGPointMake(200, 80)];
    
    path.lineWidth = 1.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    
    [path stroke];

}

-(void)circle
{
    UIColor *color = [UIColor whiteColor];
    [color set];
    
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(90, 90) radius:90 startAngle:0 endAngle: 2 *  M_PI    clockwise:YES];
    
    
    UIBezierPath *path =  [UIBezierPath  bezierPathWithOvalInRect:CGRectMake(0, 0, 180, 180)];
    
    
    path.lineWidth = 3.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path stroke];
    
}



@end
