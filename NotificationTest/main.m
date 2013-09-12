//
//  main.m
//  NotificationTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Saler.h"
#import "Student.h"
#import "Nurse.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        Student* stu1 = [[Student alloc] initWithName:@"zhao"];
        Student* stu2 = [[Student alloc] initWithName:@"qian"];
        Saler* sal1 = [[Saler alloc] initWithName:@"saler1"];
        Saler * sal2 = [[Saler alloc] initWithName:@"saler2"];
        
        Nurse* nurse = [[Nurse alloc] initWithName:@"rose"];
        [nurse callChiyao:2];
        
        
    }
    return 0;
}

