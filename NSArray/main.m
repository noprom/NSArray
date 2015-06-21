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
        
        // 取得数组中第一个元素
        NSString *first = [array1 firstObject];
        NSLog(@"First object = %@",first);
        
        // 取出指定位置的元素
        NSString *str = [array1 objectAtIndex:3];
        NSLog(@"str = %@",str);
        
        // 对应元素的下标,如果元素不存在则返回－1
        int index = (int)[array1 indexOfObject:@"3"];
        NSLog(@"index = %d",index);
    }
    return 0;
}
