//
//  Nurse.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "Nurse.h"

@implementation Nurse

-(void)dealloc
{
    [super dealloc];
}
-(id)initWithName:(NSString *)newName
{
    if (self = [super initWithName:newName Age:0]) {
        
    }
    return self;
}


-(void)callChiyao:(int)yao
{
    NSLog(@"该吃药了");
    NSDictionary* dic = nil;
    if (yao == 1) {
        dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"芬必得",@"yao", nil];
    }
    else{
        dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"泻立停",@"yao", nil];
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:@"chiyao" object:self userInfo:dic];
}

@end
