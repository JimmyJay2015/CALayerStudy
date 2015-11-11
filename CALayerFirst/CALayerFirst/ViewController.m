//
//  ViewController.m
//  CALayerFirst
//
//  Created by Jimmy－zzm on 15/11/1.
//  Copyright © 2015年 Jimmy－zzm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建图层
    CALayer *layer=[CALayer layer];
    //设置图层的属性
    layer.backgroundColor=[UIColor redColor].CGColor;
    layer.bounds=CGRectMake(0, 0, 100, 100);
    layer.position = CGPointMake(200, 200);
    layer.cornerRadius = 20;
    layer.anchorPoint=CGPointZero;

    layer.delegate = self;
    
    //添加图层
    [self.view.layer addSublayer:layer];
    self.layer = layer;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.layer.bounds = CGRectMake(0, 0, 200, 60);
//    self.layer.backgroundColor = [UIColor yellowColor].CGColor;
//    [CATransaction begin];
//    [CATransaction setDisableActions:YES];
//    self.layer.bounds=CGRectMake(0, 0, 200, 150);
//    self.layer.backgroundColor=[UIColor yellowColor].CGColor;
//    [CATransaction commit];
    
//    self.layer.anchorPoint = CGPointMake(0.5, 0.5);
    
//    self.layer.shadowColor=[UIColor blackColor].CGColor;
//    self.layer.shadowOffset=CGSizeMake(10, 20);
//    self.layer.shadowOpacity=0.6;
//    
//    self.view.backgroundColor = [UIColor blueColor];
//    
//    self.layer.contents = (id)[UIImage imageNamed:@"1111.jpg"].CGImage;
//    self.layer.borderColor = [UIColor redColor].CGColor;
//    self.layer.borderWidth = 2;
//    self.layer.masksToBounds = YES;
//    [self.layer setNeedsDisplay];
    
//    CABasicAnimation * ba = [CABasicAnimation animation];
//    
//    ba.keyPath = @"position";
//    ba.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 300)];
//    ba.duration = 2;
//    ba.removedOnCompletion = NO;
//    ba.fillMode = kCAFillModeForwards;
//    
//    ba.delegate = self;
//    
//    
//    [self.layer addAnimation:ba forKey:nil];

    
    
//    CAKeyframeAnimation *keyAnima = [CAKeyframeAnimation animation];
//    keyAnima.keyPath = @"position";
//    NSValue *v1 = [NSValue valueWithCGPoint:CGPointMake(100, 100)];
//    NSValue *v2 = [NSValue valueWithCGPoint:CGPointMake(200, 100)];
//    NSValue *v3 = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
//    NSValue *v4 = [NSValue valueWithCGPoint:CGPointMake(100, 200)];
//    NSValue *v5 = [NSValue valueWithCGPoint:CGPointMake(100, 100)];
//    keyAnima.values = @[v1,v2,v3,v4,v5];
//    
//    // NO的话， 动画执行完 layer会回到初始位置
//    keyAnima.removedOnCompletion = NO;
//    keyAnima.fillMode = kCAFillModeForwards;
//    keyAnima.duration = 4;
//    keyAnima.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
//    keyAnima.delegate = self;
//    
//    [self.layer addAnimation:keyAnima forKey:nil];
    
    
//    CAKeyframeAnimation *keyAnima = [CAKeyframeAnimation animation];
//    keyAnima.keyPath = @"position";
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddEllipseInRect(path, NULL, CGRectMake(150, 100, 100, 100));
//    keyAnima.path = path;
//    
//    CGPathRelease(path);
//    
//    keyAnima.removedOnCompletion = NO;
//    keyAnima.fillMode = kCAFillModeForwards;
//    
//    keyAnima.duration = 4;
//    
//    keyAnima.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    
//    [self.layer addAnimation:keyAnima forKey:nil];
    
//    CABasicAnimation *anima = [CABasicAnimation animationWithKeyPath:@"bounds"];
//    anima.duration = 2;
//    anima.removedOnCompletion = NO;
//    anima.fillMode = kCAFillModeForwards;
//    anima.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0,200, 200)];
//    
//    [self.layer addAnimation:anima forKey:nil];
    
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    self.layer.bounds=CGRectMake(0, 0, 100, 100);
    [CATransaction commit];
    
    CABasicAnimation *anima2 = [CABasicAnimation animationWithKeyPath:@"bounds"];
    anima2.duration = 0.2;
    anima2.removedOnCompletion = NO;
    anima2.fillMode = kCAFillModeForwards;
    anima2.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0,150, 150)];
    
    CAKeyframeAnimation *keyAnima = [CAKeyframeAnimation animation];
    keyAnima.keyPath = @"bounds";
    keyAnima.beginTime = CACurrentMediaTime() +0.2;
    NSValue *v1 = [NSValue valueWithCGRect:CGRectMake(0, 0, 150, 150)];
    NSValue *v2 = [NSValue valueWithCGRect:CGRectMake(0, 0, 160, 160)];
    NSValue *v3 = [NSValue valueWithCGRect:CGRectMake(0, 0, 140, 140)];
    NSValue *v4 = [NSValue valueWithCGRect:CGRectMake(0, 0, 150, 150)];
    keyAnima.values = @[v1,v2,v3,v4];
    keyAnima.removedOnCompletion = NO;
    keyAnima.fillMode = kCAFillModeForwards;
    keyAnima.duration = 0.2;
    keyAnima.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    CAKeyframeAnimation *keyAnima1 = [CAKeyframeAnimation animation];
    keyAnima1.keyPath = @"position";
    keyAnima1.beginTime = CACurrentMediaTime() +0.2;
    NSValue *v11 = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
    NSValue *v12 = [NSValue valueWithCGPoint:CGPointMake(195, 195)];
    NSValue *v13 = [NSValue valueWithCGPoint:CGPointMake(205, 205)];
    NSValue *v14 = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
    keyAnima1.values = @[v11,v12,v13,v14];
    keyAnima1.removedOnCompletion = NO;
    keyAnima1.fillMode = kCAFillModeForwards;
    keyAnima1.duration = 0.2;
    keyAnima1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [self.layer addAnimation:anima2 forKey:nil];
    [self.layer addAnimation:keyAnima forKey:nil];
    [self.layer addAnimation:keyAnima1 forKey:nil];
    
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 50, 50));
    //设置属性（颜色）
    //    [[UIColor yellowColor]set];
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    
    //2.渲染
    CGContextFillPath(ctx);
}

- (void)animationDidStart:(CAAnimation *)anim
{
    NSLog(@"%@", NSStringFromCGPoint(self.layer.position));
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    
    NSLog(@"%@", NSStringFromCGPoint(self.layer.position));
}

@end
