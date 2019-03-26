//
//  Person.m
//  tableView
//
//  Created by piaoguanjia123 on 2019/3/25.
//  Copyright © 2019 piaoguanjia123. All rights reserved.
//

#import "Person.h"


@implementation Person

+(instancetype)initWithP:(void (^)(Person * p))block{
    Person * p = [[Person alloc]init];
    block(p);
    return p;
}

-(Person*(^)(NSString *))eat{
    return ^(NSString * name){
        NSLog(@"%@",name);
        return self;
    };
}

-(Person*(^)(NSString *))play{
    return ^(NSString * name){
        NSLog(@"%@",name);
        
        return self;
    };
}

//重写getter方法
- (Person * _Nonnull (^)(NSString * _Nonnull))eatBlock{
    return ^(NSString * eat){
        NSLog(@"%@",eat);
        return self;
    };
}

- (Person * _Nonnull (^)(NSString * _Nonnull))playBlock{
    return ^(NSString * play){
        NSLog(@"%@",play);
        return self;
    };
}

-(NSString *)returnData{
    return @"返回了";
}
@end
