//
//  KNFItem.m
//  RandomItems
//
//  Created by knife on 16/1/2.
//  Copyright © 2016年 knife. All rights reserved.
//

#import "KNFItem.h"

@implementation KNFItem

+ (instancetype)randomItem{
    NSArray *randomAdjectiveList=@[ @"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList=@[ @"Bear", @"Spark", @"Mac"];
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    NSString *randomName = [[NSString alloc] initWithFormat:@"%@ %@",randomAdjectiveList[adjectiveIndex]
        ,randomNounList[nounIndex]];
    NSString *randomSerialNumber =[[NSString alloc] initWithFormat:@"%c%c%c%c%c",
                                   '0'+arc4random() % 10,
                                   'A'+arc4random() % 26,
                                   '0'+arc4random() % 10,
                                   'A'+arc4random() % 26,
                                   'A'+arc4random() % 26];
    int randomValue = arc4random() % 100;
    return [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
}

-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)number
{
    self = [super init];
    if(self){
        self.itemName = name;
        self.valueInDollars = value;
        self.itemSerialNumber = number;
        self.dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
                    serialNumber:(NSString *)number{
    return [self initWithItemName:name valueInDollars:0 serialNumber:number];
}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];;
}
-(instancetype)init{
    return [self initWithItemName:@"item"];
}
-(NSString *)description {
    NSString *descrip=[[NSString alloc] initWithFormat:@"%@[%@]: Worth $%d,recorded on %@",
                       self.itemName,self.itemSerialNumber,self.valueInDollars,self.dateCreated];
    return descrip;
}
@end
