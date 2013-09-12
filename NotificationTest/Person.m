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
}


-(id)initWithName:(NSString *)newName Age:(int)newAge{
    self = [super init];
    if (self) {
        
        _name = [newName retain];
        _age = newAge;
      
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"name:%@,age:%d",self.name,self.age];
    //    return [NSString stringWithFormat:@"name:%@,age:%d",_name,_age];
}
@end
