//
//  Student.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"chiyao" object:nil];
    [super dealloc];
}

-(id)initWithName:(NSString *)newName
{
    if (self = [super initWithName:newName Age:0]) {
        NSNotificationCenter* notifcationCenter = [NSNotificationCenter defaultCenter];
        [notifcationCenter addObserver:self selector:@selector(chiyao) name:@"chiyao" object:nil];
    }
    return self;
}

-(void)chiyao
{
    NSLog(@"%@开始吃药",self.name);
}
@end
