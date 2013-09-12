//
//  Hero.h
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject

@property(nonatomic,retain)NSString * name;
@property(nonatomic,assign)int hp;

-(id)initWithName:(NSString *)newName Hp:(int)newHp;

@end
