//
//  Hero.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "Hero.h"

@implementation Hero

@synthesize name = _name ;
@synthesize hp = _hp;


- (void)dealloc
{
    [_name release];
    
    [self removeObserver:self forKeyPath:@"hp"];
    
    
    [super dealloc];
}

-(id)initWithName:(NSString *)newName Hp:(int)newHp{
    self = [super init];
    if (self) {
        _name = [newName retain];
        _hp = newHp;
        
        
        [self addObserver:self forKeyPath:@"hp" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"obj = %@,change = %@",object,change);
    Hero* aHero = object;
    if (aHero.hp > 100) {
        _hp = 100;
        NSLog(@"满血了，你可以复活了");
        [self removeObserver:self forKeyPath:@"hp"];

    }
}


 
@end
