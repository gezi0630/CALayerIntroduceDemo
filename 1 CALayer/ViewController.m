//
//  ViewController.m
//  1 CALayer
//
//  Created by MAC on 2017/8/12.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
 红色view
 */
@property (weak, nonatomic) IBOutlet UIView *redView;

/**
 图片view
 */
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置红色view
    [self setUpViewLayer];
    //设置imageView
    [self setUpImageViewLayer];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [UIView animateWithDuration:1 animations:^{
       
        // angle ：旋转的角度  x:如果是1，就以x轴为轴旋转  y: 如果是1，就以y轴为轴旋转  z:如果是1，就以z轴为轴旋转
//        CATransform3DMakeRotation(CGFloat angle, CGFloat x, CGFloat y, CGFloat z)
        
        _redView.layer.transform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
        
        //缩放
        _redView.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
        
        
    }];
}

-(void)setUpImageViewLayer
{
    //利用剪切layer的方法剪切圆形会有问题，当imageView时长方形时，就不会切出圆形了
    //设置半径
    _imageView.layer.cornerRadius = 75;
    //多余部分切掉
    _imageView.layer.masksToBounds = YES;
    
    //边框宽度
    _imageView.layer.borderWidth = 1;
    //边框颜色
    _imageView.layer.borderColor = [UIColor greenColor].CGColor;

}

-(void)setUpViewLayer
{
    //•设置阴影
    //Opacity 不透明度
    _redView.layer.shadowOpacity = 1;
    
    //设置阴影偏移的方向
    //    _redView.layer.shadowOffset = CGSizeMake(10, 10);
    
    //阴影的颜色
    _redView.layer.shadowColor = [UIColor yellowColor].CGColor;
    //阴影的半径
    _redView.layer.shadowRadius = 10;
    
    //•圆角半径
    _redView.layer.cornerRadius = _redView.bounds.size.width/2;
    
    //边框
    _redView.layer.borderWidth = 1;
    _redView.layer.borderColor = [UIColor greenColor].CGColor;
    

}






@end
