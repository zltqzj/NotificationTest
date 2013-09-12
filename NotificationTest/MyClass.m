//
//  MyClass.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

@synthesize per = _per;

-(void)dealloc
{
    [_per release];
    [super dealloc];
}

@end
