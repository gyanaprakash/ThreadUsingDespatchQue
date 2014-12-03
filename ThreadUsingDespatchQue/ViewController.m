//
//  ViewController.m
//  ThreadUsingDespatchQue
//
//  Created by Bsetecip10 on 02/12/14.
//  Copyright (c) 2014 gyana. All rights reserved.
//
#import "ViewController.h"


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
//    queue_c = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 2);
    
    dispatch_queue_t queue_d = dispatch_queue_create("com.example.MyQueue_a", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue_d, ^{

        [Methods setValueFora:10 ValueForb:12];
    });
//    queue_d = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 2);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
