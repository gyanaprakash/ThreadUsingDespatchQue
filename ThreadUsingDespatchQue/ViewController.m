//
//  ViewController.m
//  ThreadUsingDespatchQue
//
//  Created by Bsetecip10 on 02/12/14.
//  Copyright (c) 2014 gyana. All rights reserved.
//
#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
      
    dispatch_queue_t queue_c = dispatch_queue_create("com.example.MyQueue_b", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue_c, ^{
    [Methods setPrint:10];
    });

    
    dispatch_queue_t queue_d = dispatch_queue_create("com.example.MyQueue_a", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue_d, ^{
        [Methods setValueFora:10 ValueForb:12];
    });

    
    NSArray *animationimages=@[@"close_cha.png",@"flashing_auto.png",@"shot_h.png",@"close_cha.png"];

    [self setx:10 y:40 h:40 v:40 setimage:animationimages];
}


-(void)setx:(CGFloat)x y:(CGFloat)y h:(CGFloat)h v:(CGFloat)v setimage:(NSArray*)images1
{
    UIImageView *img =[[UIImageView alloc]initWithFrame:CGRectMake(x, y, h, v)];
    NSMutableArray *images=[[NSMutableArray alloc]init];
    for (int i=0; i<[images1 count]; i++) {
        [images addObject:[UIImage imageNamed:[images1 objectAtIndex:i]]];
    }
    img.animationImages=images;
    [img setAnimationDuration:.4f];
    [img startAnimating];
    [self.view addSubview:img];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
