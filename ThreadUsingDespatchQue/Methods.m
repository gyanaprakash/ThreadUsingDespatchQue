//
//  Methods.m
//  ThreadUsingDespatchQue
//
//  Created by Bsetecip10 on 03/12/14.
//  Copyright (c) 2014 gyana. All rights reserved.
//

#import "Methods.h"

@implementation Methods


    
    +(void)setPrint:(int)i
    {
        int j;
        for (j=0; j<=i; j++)
        {
            NSLog(@"%d",j);
        }
    }
    
    +(void)setValueFora:(int)a ValueForb:(int)b
    {
        int c;
        c= a+b;
        NSLog(@"addition = %d",c);
    }
    


@end
