//
//  PetsModels.h
//  PetsMarket
//
//  Created by 臻 曦 on 16/7/25.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PetsDataNewModel,PetsDataNewPetsModel,PetsDataNewPetsUserModel,PetsDataNewPetsCatModel,PetsDataTopModel,PetsDataTopPetsModel,PetsDataValuesPetsUserModel,PetsDataTopPetsCatModel, PetsDataNew_TopicsModel,PetsDataValuesModel,PetsDataValuesPetsModel,PetsDataTopPetsUserModel,PetsDataValuesPetsCatModel;

//**********************  首页滚动   *********************//
@interface PetsModel : NSObject
@property (nonatomic, assign) NSInteger error;
//@property (nonatomic, strong) PetsDataModel *data;
//@end
//@interface PetsDataModel: NSObject
@property (nonatomic, assign) BOOL has_more;
//new --> news;
@property (nonatomic, strong) NSArray<PetsDataNewModel *> *news;
@property (nonatomic, strong) NSArray<PetsDataTopModel *> *top;
//new_topics -- >newtopics
@property (nonatomic, strong) NSArray< PetsDataNew_TopicsModel *> *newtopics;
@property (nonatomic, strong) NSArray<PetsDataValuesModel *> *values;
@property (nonatomic, copy) NSString *link_type;
//id --> identify;
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *pic;
@property (nonatomic, copy) NSString *link_value;
@end

//**********************  最新上架   *********************//
@interface PetsDataNewModel : NSObject
@property (nonatomic, strong) NSArray<PetsDataNewPetsModel *> *pets;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *desc;
@end

@interface PetsDataNewPetsModel : NSObject
//shipping_types
@property (nonatomic, copy) NSString *other;
@property (nonatomic, copy) NSString *city;
//self -- >selfs
@property (nonatomic, copy) NSString *selfs;
//id --> identify;
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *ctName;
@property (nonatomic, copy) NSString *pinyin;

@property (nonatomic, copy) NSString *desc;
@property (nonatomic, assign) BOOL is_support_payment;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL is_vaccined;
@property (nonatomic, assign) BOOL elite;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, assign) NSInteger lng;
@property (nonatomic, assign) BOOL is_pure;
@property (nonatomic, assign) NSInteger call_count;
@property (nonatomic, strong) NSArray *certify_photos;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *cover;
//id --> identifys;
@property (nonatomic, assign) NSInteger identifys;
@property (nonatomic, strong) PetsDataNewPetsUserModel *user;
@property (nonatomic, strong) NSArray *services;
@property (nonatomic, assign) BOOL faved;
@property (nonatomic, assign) NSInteger view_count;
@property (nonatomic, strong) PetsDataNewPetsCatModel *cat;
@property (nonatomic, assign) NSInteger lat;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSArray<NSString *> *photos;
@property (nonatomic, copy) NSString *created_at;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, assign) BOOL is_parasited;
@property (nonatomic, strong) NSArray *videos;
@property (nonatomic, assign) BOOL is_closed;
@property (nonatomic, copy) NSString *address;
//Contact
//name -- > myname   address -- > myAddress;
@property (nonatomic, copy) NSString *myName;
@property (nonatomic, copy) NSString *myAddress;
@property (nonatomic, copy) NSString *mobile;

@end

@interface PetsDataNewPetsUserModel : NSObject
//id --> identify
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *vip;
@property (nonatomic, assign) NSInteger sex;

@property (nonatomic,copy) NSString *address;
@property (nonatomic,copy) NSString *mobile;
@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger call_count;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *avatar;
@property (nonatomic, assign) NSInteger called_count;
@property (nonatomic, assign) NSInteger view_count;
@property (nonatomic, assign) BOOL support_payment;
@property (nonatomic, copy) NSString *nickname;
@property (nonatomic, assign) NSInteger score;
@property (nonatomic, strong) NSArray *services;
@property (nonatomic, strong) NSArray *photos;
@end


@interface PetsDataNewPetsCatModel : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, assign) NSInteger min_price;
@property (nonatomic, copy) NSString *content;
//id --> identify
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *pic;
@property (nonatomic, assign) NSInteger motion;
@property (nonatomic, assign) NSInteger furclean;
@property (nonatomic, assign) NSInteger train;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;

@end

/********************* 宠物社区  **********************/
@interface PetsDataNew_TopicsModel : NSObject
@property (nonatomic, copy) NSString *content;
//id --> identify
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *created_at;
@property (nonatomic, assign) NSInteger comment_count;
@property (nonatomic, copy) NSString *updated_at;
@property (nonatomic, strong) NSArray<NSString *> *pics;
//id --> tid;
@property (nonatomic, assign) NSInteger tid;
@property (nonatomic, copy) NSString *name;
@end

/********************* 萌宠排行  **********************/
@interface PetsDataTopModel : NSObject
@property (nonatomic, strong) NSArray<PetsDataTopPetsModel *> *pets;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *desc;
@end


@interface PetsDataTopPetsModel : NSObject
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *ctName;
@property (nonatomic, copy) NSString *pinyin;
@property (nonatomic, assign) BOOL is_support_payment;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL is_vaccined;
@property (nonatomic, assign) BOOL elite;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, copy) NSString *other;
@property (nonatomic, copy) NSString *city;
//self --> selfs
@property (nonatomic, copy) NSString *selfs;
@property (nonatomic, assign) CGFloat lng;
@property (nonatomic, assign) BOOL is_pure;
@property (nonatomic, assign) NSInteger call_count;
@property (nonatomic, strong) NSArray *certify_photos;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *cover;
//id --> identifys;
@property (nonatomic, assign) NSInteger indetifys;
@property (nonatomic, strong) PetsDataTopPetsUserModel *user;
@property (nonatomic, strong) NSArray<NSString *> *services;
@property (nonatomic, assign) BOOL faved;
@property (nonatomic, assign) NSInteger view_count;
@property (nonatomic, strong) PetsDataTopPetsCatModel *cat;
@property (nonatomic, assign) CGFloat lat;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSArray<NSString *> *photos;
@property (nonatomic, copy) NSString *created_at;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, assign) BOOL is_parasited;
@property (nonatomic, strong) NSArray<NSString *> *videos;
@property (nonatomic, assign) BOOL is_closed;
@property (nonatomic, copy) NSString *address;
@end

/*********************          **********************/
@interface PetsDataTopPetsUserModel : NSObject
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, copy) NSString *vip;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, assign) NSInteger call_count;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *avatar;
@property (nonatomic, assign) NSInteger called_count;
@property (nonatomic, assign) NSInteger view_count;
@property (nonatomic, assign) BOOL support_payment;
@property (nonatomic, copy) NSString *nickname;
@property (nonatomic, assign) NSInteger score;
@property (nonatomic, strong) NSArray<NSString *> *services;
@property (nonatomic, strong) NSArray<NSString *> *photos;

@property (nonatomic, strong) NSArray<NSNumber *> *area_ids;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *mobile;
@end

@interface PetsDataTopPetsCatModel : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, assign) NSInteger min_price;
@property (nonatomic, copy) NSString *content;
//id --> identify
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *pic;
@property (nonatomic, assign) NSInteger motion;
@property (nonatomic, assign) NSInteger furclean;
@property (nonatomic, assign) NSInteger train;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@end

/********************* 宠物总类详情 **********************/
@interface PetsDataValuesModel : NSObject
@property (nonatomic, strong) NSArray<PetsDataValuesPetsModel *> *pets;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *desc;
// Params 类
@property (nonatomic, assign) NSInteger cat_id;
@end

@interface PetsDataValuesPetsModel : NSObject
@property (nonatomic, copy) NSString *desc;
//@property (nonatomic, strong) Area *area;
//id --> identify;
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *ctName;
@property (nonatomic, copy) NSString *pinyin;
//contact;
@property (nonatomic, strong) NSArray<NSNumber *> *area_ids;
@property (nonatomic, copy) NSString *mobile;
@property (nonatomic, copy) NSString *myName;
@property (nonatomic, copy) NSString *myAddress;
//shipping_types
@property (nonatomic, copy) NSString *city;
//self -- > selfs
@property (nonatomic, copy) NSString *selfs;
@property (nonatomic, assign) BOOL is_support_payment;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL is_vaccined;
@property (nonatomic, assign) BOOL elite;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, assign) CGFloat lng;
@property (nonatomic, assign) BOOL is_pure;
@property (nonatomic, assign) NSInteger call_count;
@property (nonatomic, strong) NSArray *certify_photos;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *cover;
//id --> cid;
@property (nonatomic, assign) NSInteger cid;
@property (nonatomic, strong) PetsDataValuesPetsUserModel *user;
@property (nonatomic, strong) NSArray *services;
@property (nonatomic, assign) BOOL faved;
@property (nonatomic, assign) NSInteger view_count;
@property (nonatomic, strong) PetsDataValuesPetsCatModel *cat;
@property (nonatomic, assign) CGFloat lat;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSArray<NSString *> *photos;
@property (nonatomic, copy) NSString *created_at;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, assign) BOOL is_parasited;
@property (nonatomic, strong) NSArray *videos;
@property (nonatomic, assign) BOOL is_closed;
@property (nonatomic, copy) NSString *address;
@end

@interface PetsDataValuesPetsUserModel : NSObject
//id -- > identify
@property (nonatomic, assign) NSInteger identify;
@property (nonatomic, copy) NSString *vip;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, assign) NSInteger call_count;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *avatar;
@property (nonatomic, assign) NSInteger called_count;
@property (nonatomic, assign) NSInteger view_count;
@property (nonatomic, assign) BOOL support_payment;
@property (nonatomic, copy) NSString *nickname;
@property (nonatomic, assign) NSInteger score;
@property (nonatomic, strong) NSArray *services;
@property (nonatomic, strong) NSArray *photos;
//contact;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *mobile;
@end


@interface PetsDataValuesPetsCatModel : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, assign) NSInteger min_price;
@property (nonatomic, copy) NSString *content;
//id --> indentify
@property (nonatomic, assign) NSInteger indentify;
@property (nonatomic, copy) NSString *pic;
@property (nonatomic, assign) NSInteger motion;
@property (nonatomic, assign) NSInteger furclean;
@property (nonatomic, assign) NSInteger train;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@end




