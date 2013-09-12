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
#import "MyClass.h"
#import "Hero.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        /*通知练习代码
        
        Student* stu1 = [[Student alloc] initWithName:@"zhao"];
        Student* stu2 = [[Student alloc] initWithName:@"qian"];
        Saler* sal1 = [[Saler alloc] initWithName:@"saler1"];
        Saler * sal2 = [[Saler alloc] initWithName:@"saler2"];
        
        Nurse* nurse = [[Nurse alloc] initWithName:@"rose"];
        [nurse callChiyao:2];
        */
        
        
        
        /* KVC 键路径的使用
        Person* per = [[Person alloc] initWithName:@"alex" Age:20];
        [per setValue:@"jack" forKey:@"name"];
        
        MyClass* aClass = [[MyClass alloc] init];
        aClass.per = per;
        NSLog(@"%@",aClass.per);
        
        [per release];
        
        Person* per1 = [[Person alloc] initWithName:@"per1" Age:20];
        [aClass setValue:per1 forKey:@"per"];
        NSLog(@"%@",[aClass valueForKey:@"per"]);
        NSLog(@"per:%@",aClass.per);
        
        [[aClass valueForKey:@"per"] setValue:@"rose" forKey:@"name"];
        NSLog(@"valueForKey方法：%@",aClass.per);
        
        [aClass setValue:@"even" forKeyPath:@"per.name"];
        NSLog(@"键路径方法：%@",[aClass valueForKeyPath:@"per.name"]);
         */

        
        /* KVO
        Person* per = [[Person alloc] initWithName:@"sun" Age:20];
        per.name = @"li";
        NSLog(@"name = %@",per.name);
        
        per.age = 18;
        NSLog(@"age = %d",per.age);
        */
    
    Hero* aHero = [[Hero alloc] initWithName:@"zhou" Hp:1000];
    aHero.hp =  0 ;
    while (1) {
        aHero.hp += 125;
        sleep(1);
    }
        
        
    }
    return 0;
}

