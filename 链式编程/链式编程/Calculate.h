//
//  Calculate.h
//  链式编程
//
//  Created by piaoguanjia123 on 2019/3/26.
//  Copyright © 2019 piaoguanjia123. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculate : NSObject
@property (nonatomic,copy) Calculate *(^add) (NSInteger num);
@property (nonatomic,copy) Calculate *(^sub) (NSInteger num);
@property (nonatomic,copy) Calculate *(^mul) (NSInteger num);
@property (nonatomic,copy) Calculate *(^div) (NSInteger num);

+(NSInteger)initWithCalculate:(void(^)(Calculate*))block;
@end

NS_ASSUME_NONNULL_END
