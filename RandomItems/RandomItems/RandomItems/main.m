//
//  main.m
//  RandomItems
//
//  Created by knife on 16/1/2.
//  Copyright © 2016年 knife. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KNFItem.h"
#import "KNFContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  /*      NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items addObject:@"Four"];
        [items insertObject:@"zero" atIndex:0];
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        KNFItem *newItem = [[KNFItem alloc] initWithItemName:@"Knife"
                                             valueInDollars:10
                                                serialNumber:@"ABCDE"];
        [items addObject:newItem];
        NSLog(@"%@",items.lastObject);*/
        KNFContainer *container=[[KNFContainer alloc]initWithItemName:@"CONTAINER" valueInDollars:30 serialNumber:@"0A0AA"];
        container.subitems = [[NSMutableArray alloc] init];
        for (int i = 0; i< 10; i++) {
            KNFItem *item= [KNFItem randomItem];
            [container.subitems addObject:item];
        }
        for (NSString *item in container.subitems) {
            NSLog(@"%@",item);
        }
        NSLog(@"%@",container);
        container = nil;
    }
    return 0;
}
