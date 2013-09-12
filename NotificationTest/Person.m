//
//  Person.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name = _name;
@synthesize age = _age;


-(void)dealloc
{
    [super dealloc];
    [_name release];
    [self removeObserver:self forKeyPath:@"name"];
    [self removeObserver:self forKeyPath:@"age"];
}


-(id)initWithName:(NSString *)newName Age:(int)newAge{
    self = [super init];
    if (self) {
        
        _name = [newName retain];
        _age = newAge;
      
        //添加监听者
        [self addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:@"abc"];
        [self addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionOld context:nil];
        
    }
    return self;
}



-(NSString *)description{
    return [NSString stringWithFormat:@"name:%@,age:%d",self.name,self.age];
    //    return [NSString stringWithFormat:@"name:%@,age:%d",_name,_age];
}


//实现监听方法
//该方法在值被修改后自动调用
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    NSLog(@"keypath = %@,object = %@,change = %@,context = %@",keyPath,object,change,context);
    
}
@end
