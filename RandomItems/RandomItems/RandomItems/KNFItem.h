//
//  KNFItem.h
//  RandomItems
//
//  Created by knife on 16/1/2.
//  Copyright © 2016年 knife. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNFItem : NSObject
@property (nonatomic) NSString *itemName;
@property (nonatomic) NSString *itemSerialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic) NSDate *dateCreated;

+ (instancetype)randomItem;

- (instancetype)initWithItemName:(NSString *)name
   valueInDollars:(int)value
     serialNumber:(NSString *)number;
- (instancetype)initWithItemName:(NSString *)name
                    serialNumber:(NSString *)number;
- (instancetype)initWithItemName:(NSString *)name;

@end
