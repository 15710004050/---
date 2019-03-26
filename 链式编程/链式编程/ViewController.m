//
//  ViewController.m
//  链式编程
//
//  Created by piaoguanjia123 on 2019/3/26.
//  Copyright © 2019 piaoguanjia123. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Calculate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[Person initWithP:^(Person * _Nonnull p) {
        p.eat(@"吃饭了").play(@"玩耍了");
        p.eatBlock(@"吃饭了").playBlock(@"玩耍了");
    }]returnData];
    
    [Calculate initWithCalculate:^(Calculate * _Nonnull block) {
        block.add(1).add(5).div(2);
    }];
}


@end
