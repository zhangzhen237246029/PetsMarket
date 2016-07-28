//
//  PetsModels.m
//  PetsMarket
//
//  Created by 臻 曦 on 16/7/25.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "PetsModel.h"

@implementation PetsModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"ads":@"data.ads", @"news":@"data.new",@"newtopics":@"data.new_topics", @"identify":@"id",@"top":@"data.top",@"values":@"data.values"};

}
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"news":[PetsDataNewModel class], @"top":[PetsDataTopModel class], @"newtopics":[PetsDataNew_TopicsModel class],@"values":[PetsDataValuesModel class],@"ads":[PetsModel class]};

}
@end


@implementation PetsDataNewModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"pets":[PetsDataNewPetsModel class]};

}
@end

@implementation PetsDataNewPetsModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"area.id", @"ctName":@"area.name", @"pinyin":@"area.pinyin",@"myName":@"contact.name", @"myAddress":@"contact.address",@"mobile":@"contact.mobile", @"area_ids":@"contact.are_ids", @"city":@"shipping_types.city", @"other":@"shipping_types.other", @"selfs":@"shipping_types.self",@"identifys":@"id"};
    
}

@end

@implementation PetsDataNewPetsUserModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"address":@"contact.address", @"mobile":@"contact.mobile", @"name":@"contact.name"};
}
@end

@implementation PetsDataNewPetsCatModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"id"};

}

@end

//**********************  ************************//
@implementation PetsDataNew_TopicsModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"id", @"tid":@"tag.id", @"name":@"tag.name"};

}
@end

@implementation PetsDataTopModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"pets":[PetsDataTopPetsModel class]};

}
@end
@implementation PetsDataTopPetsModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"area.id",@"ctName":@"area.name",                     @"pinyin":@"area.pinyin", @"myName":@"contact.name",              @"myAddress":@"contact.address",@"mobile":@"contact.mobile",          @"area_ids":@"contact.are_ids", @"city":@"shipping_types.city",         @"other":@"shipping_types.other",@"selfs":@"shipping_types.self",@"indetifys":@"id"};
    
}
//+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
//{
//    return @{@"area_ids":[PetsDataTopPetsModel class]};
//    
//}

@end
@implementation PetsDataTopPetsUserModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"address":@"contact.address", @"mobile":@"contact.mobile", @"name":@"contact.name"};
    
}
@end
@implementation PetsDataTopPetsCatModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"id"};

}
@end

@implementation PetsDataValuesModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"cat_id":@"params.cat_id"};

}
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"pets":[PetsDataValuesPetsModel class]};
}
@end


@implementation PetsDataValuesPetsModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
return @{@"identify":@"area.id", @"ctName":@"area.name", @"pinyin":@"area.pinyin",@"myName":@"contact.name",              @"myAddress":@"contact.address",@"moblie":@"contact.moblie",          @"area_ids":@"contact.are_ids",@"selfs":@"shipping_types.self",@"city":@"shipping_types.city",@"cid":@"id"};

}
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"area_ids":[PetsDataValuesPetsModel class]};
    
}
@end


@implementation PetsDataValuesPetsUserModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"id",@"address":@"contace.address", @"mobile":@"contace.mobile", @"name":@"contace.name"};

}
@end

@implementation PetsDataValuesPetsCatModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{@"identify":@"id"};

}
@end




