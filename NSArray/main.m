//
//  main.m
//  NSArray
//
//  Created by noprom on 15/6/21.
//  Copyright (c) 2015年 noprom. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // OC 数组可以存储不同类型的对象,且只能存储对象
        // 内存空间是连续的,保存对象的时候，存放的是对象的指针
        
        NSArray *array1 = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
        // 数组长度
        int count = (int) array1.count;
        NSLog(@"count = %d", count);
        
        // 判断数组中是否包含特定对象
        BOOL isHave = [array1 containsObject:@"2"];
        if(isHave){
            NSLog(@"存在！");
        }else{
            NSLog(@"不存在!");
        }
        
        // 得到数组中最后一个元素
        NSString *last = [array1 lastObject];
        NSLog(@"Last obect = %@",last);
        
        
    }
    return 0;
}
