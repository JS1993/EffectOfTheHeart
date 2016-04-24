//
//  ViewController.m
//  EffectOfTheHeart
//
//  Created by  江苏 on 16/4/24.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建动画
    CABasicAnimation* anim=[CABasicAnimation animation];
    
    //设置描述哪个属性产生动画
    anim.keyPath=@"transform.scale";
    
    //设置值
    anim.toValue=@0.5;
    
    //设置动画次数
    anim.repeatCount=MAXFLOAT;
    
    //取消反弹效果
    anim.removedOnCompletion=NO;
    
    //设置动画执行后保持最新效果
    anim.fillMode=kCAFillModeForwards;
    
    [_imageV.layer addAnimation:anim forKey:nil];
    
    
}



@end
