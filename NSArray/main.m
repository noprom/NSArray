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
        int count = (int) array1.count; // 数组长度
        NSLog(@"count = %d", count);
        
        
    }
    return 0;
}
