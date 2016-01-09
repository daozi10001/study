//
//  KNFContainer.m
//  RandomItems
//
//  Created by knife on 16/1/2.
//  Copyright © 2016年 knife. All rights reserved.
//

#import "KNFContainer.h"

@implementation KNFContainer
-(NSString *)description{
    int sumValue = 0;
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@",self.itemName];
    KNFItem *item;
    for (int i=0; i < [self.subitems count]; i++) {
        if( [self.subitems[i] isKindOfClass:[KNFItem class]] ){
            item = self.subitems[i];
            sumValue = item.valueInDollars;
        }
    }
    sumValue += self.valueInDollars;
    descriptionString = [NSString stringWithFormat:@"%@:SumValue:%d\n",descriptionString,sumValue];
    for (int i=0; i < [self.subitems count]; i++) {
        if( [self.subitems[i] isKindOfClass:[KNFItem class]] ){
            item = self.subitems[i];
            descriptionString = [NSString stringWithFormat:@"%@SubItemName%d:%@\n",descriptionString,i,item.itemName];
        }
    }
    
    return descriptionString;
}
@end
