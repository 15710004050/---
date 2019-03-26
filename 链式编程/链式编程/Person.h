//
//  Person.h
//  tableView
//
//  Created by piaoguanjia123 on 2019/3/25.
//  Copyright © 2019 piaoguanjia123. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
+(instancetype)initWithP:(void (^)(Person * p))block;

-(Person*(^)(NSString *))eat;
-(Person*(^)(NSString *))play;
//属性相对于方法可以带出参数
@property (nonatomic,copy) Person *(^eatBlock) (NSString * eat);
@property (nonatomic,copy) Person*(^playBlock) (NSString *play);

-(NSString *)returnData;
@end

NS_ASSUME_NONNULL_END
