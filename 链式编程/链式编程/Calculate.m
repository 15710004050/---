//
//  Calculate.m
//  链式编程
//
//  Created by piaoguanjia123 on 2019/3/26.
//  Copyright © 2019 piaoguanjia123. All rights reserved.
//

#import "Calculate.h"

@interface Calculate ()
@property (nonatomic,assign) NSInteger result;
@end

@implementation Calculate
+(NSInteger)initWithCalculate:(void(^)(Calculate*))block{
    Calculate * cal = [Calculate new];
    block(cal);
    return cal.result;
}

- (Calculate * _Nonnull (^)(NSInteger))add{
    return ^(NSInteger num){
        self.result += num;
        NSLog(@"加法：%ld",(long)self.result);
        return self;
    };
}

- (Calculate * _Nonnull (^)(NSInteger))sub{
    return ^(NSInteger num){
        self.result -= num;
        NSLog(@"减法：%ld",(long)self.result);
        return self;
    };
}

- (Calculate * _Nonnull (^)(NSInteger))mul{
    return ^(NSInteger num){
        self.result *= num;
        NSLog(@"乘法：%ld",(long)self.result);
        return self;
    };
}

- (Calculate * _Nonnull (^)(NSInteger))div{
    return ^(NSInteger num){
        self.result /= num;
        NSLog(@"除法：%ld",(long)self.result);
        return self;
    };
}

@end
