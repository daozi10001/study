//
//  KNFItem+CoreDataProperties.h
//  Homepwner
//
//  Created by knife on 16/2/15.
//  Copyright © 2016年 knife. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "KNFItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface KNFItem (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *itemName;
@property (nullable, nonatomic, retain) NSString *serialNumber;
@property (nullable, nonatomic, retain) NSNumber *valueInDollars;
@property (nullable, nonatomic, retain) NSDate *dateCreated;
@property (nullable, nonatomic, retain) NSString *itemKey;
@property (nullable, nonatomic, retain) id thumbnail;
@property (nullable, nonatomic, retain) NSNumber *orderingValue;
@property (nullable, nonatomic, retain) NSManagedObject *assetType;

@end

NS_ASSUME_NONNULL_END
