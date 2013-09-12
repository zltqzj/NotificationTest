//
//  Saler.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "Saler.h"

@implementation Saler
- (void)dealloc
{
    //去消息中心移除监听者
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"chiyao" object:nil];
    
    [super dealloc];
}


-(id)initWithName:(NSString *)newName{
    self = [super initWithName:newName Age:0];
    if (self) {
        
        //注册监听者
        NSNotificationCenter * notifcationCter = [NSNotificationCenter defaultCenter];
        [notifcationCter addObserver:self selector:@selector(chiyao:) name:@"chiyao" object:nil];
        
    }
    return self;
}


-(void)chiyao:(NSNotification *)notification{
    //    NSLog(@"%@",notification.userInfo);
    NSString * yao = [notification.userInfo objectForKey:@"yao"];
    NSLog(@"销售%@开始卖药(%@)",self.name,yao);
}

@end
