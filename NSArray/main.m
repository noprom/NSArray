//
//  main.m
//  NSArray
//
//  Created by noprom on 15/6/21.
//  Copyright (c) 2015年 noprom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

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
        
        // 数组的遍历
        // 1.通过数组的下标逐一取出查看
        // 2.通过快速枚举 for in
        // 3.使用枚举器
        Person *p = [[Person alloc]init];
        p.personName = @"张三";

//        添加对象数组
        NSArray *array2 = [[NSArray alloc]initWithObjects:@"a",@"b",p,@"c", nil];
        
        // 1.逐一取值
        for(int i = 0; i<array1.count; ++i){
            NSString *str1 = [array1 objectAtIndex:i];
            NSLog(@"str%d = %@",i,str1);
        }
        
        // 2.快速枚举，需要让数组中的元素的类型保持一致
        for(NSString *str2 in array2){
            NSLog(@"str2 = %@",str2);
        }
        
        
    }
    return 0;
}
