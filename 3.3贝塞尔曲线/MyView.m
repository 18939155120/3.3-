//
//  MyView.m
//  3.3贝塞尔曲线
//
//  Created by MS on 16-4-20.
//  Copyright (c) 2016年 MS. All rights reserved.
//

#import "MyView.h"

@implementation MyView
-(void)drawRect:(CGRect)rect{
    //[self text1];
    [self text2];
    [self text3];
}
//多点连线
-(void)text1{
    UIColor *lineColor=[UIColor redColor];
    [lineColor set];
    UIBezierPath *path=[UIBezierPath bezierPath];
    //设置起点
    [path moveToPoint:CGPointMake(100, 100)];
    //添加一个点
    [path addLineToPoint:CGPointMake(20, 300)];
    [path addLineToPoint:CGPointMake(80, 80)];
    
    [path addLineToPoint:CGPointMake(200, 10)];
    
    [path closePath];
    path.lineWidth=3;
    
    //按点连线
    [path stroke];
    
    
    
}
-(void)text2{
    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 200, 100)];
    UIColor *lineColor=[UIColor yellowColor];
    [lineColor set];
    
    [path stroke];

}

-(void)text3{



}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
