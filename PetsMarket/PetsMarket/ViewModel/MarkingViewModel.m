//
//  MarkingViewModel.m
//  PetsMarket
//
                        


//  Created by tarena46 on 16/7/26.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "MarkingViewModel.h"

@implementation MarkingViewModel
//分区
-(NSInteger)sectionNum{
    return self.model.news.count + self.model.top.count + self.model.values.count;
}

-(NSInteger)ForSection:(NSInteger)section{

    if (section == 0) {
        return self.model.news[0].pets.count;
    }else if(section == 1){
    
        return self.model.top[0].pets.count;
    
    }else{
        return self.model.values[section - 2].pets.count;
    
    }
    

}


-(NSURL *)headIVForSection:(NSInteger)section Row:(NSInteger)row{
    if (section == 0) {
        return self.model.news[0].pets[row].cover.im_URL;
        
    }else{
    
        return self.model.top[0].pets[row].cover.im_URL;
    
    }
}

//title
-(NSString *)titleForSection:(NSInteger)section Row:(NSInteger)row{

    if (section == 0) {
        return self.model.news[0].pets[row].cat.name;
    }else{
        return self.model.top[0].pets[row].cat.name;
    }

}

//money
-(NSString *)moneyForSection:(NSInteger)section Row:(NSInteger)row{
    if (section == 0) {
        NSString *str = [NSString stringWithFormat:@"￥%ld",self.model.news[0].pets[row].cat.min_price];
        return str;
    }else{
    
        NSString *str = [NSString stringWithFormat:@"￥%ld",self.model.top[0].pets[row].cat.min_price];
        return str;
    }


}

//时间或者浏览
-(NSString *)timeOrbrowseForSection:(NSInteger)section Row:(NSInteger)row{
    if (section == 0) {
        return self.model.news[0].pets[row].created_at;
    }else{
        NSString *str = [NSString stringWithFormat:@"%ld",self.model.top[0].pets[row].view_count];
        
        return str;
        
    
    }
}

//OtherCell

-(NSURL *)OtherheadIVForSection:(NSInteger)section Row:(NSInteger)row{

    return self.model.values[section - 2].pets[row].cover.im_URL;

}
-(NSString *)OthertltleLbForSection:(NSInteger)section Row:(NSInteger)row{
    return self.model.values[section - 2].pets[row].name;

}
-(NSString *)OthertimeLbForSection:(NSInteger)section Row:(NSInteger)row{
    return [NSString stringWithFormat:@"%@ | %@",self.model.values[section - 2].pets[row].created_at,self.model.values[section - 2].pets[row].ctName];
}
-(NSString *)OthermoneyLbForSection:(NSInteger)section Row:(NSInteger)row{

    return [NSString stringWithFormat:@"￥%ld",self.model.values[section - 2].pets[row].price];
}


-(void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
self.dataTask = [NetManager getPetsDataCompletionHandler:^(PetsModel *model, NSError *error) {
    if (!error) {
        self.model = model;
    }
    !completionHandler ?: completionHandler(error);
}];

}


//分区头
-(NSString *)liveTitle:(NSInteger)section{

    if (section == 0) {
        return self.model.news[0].title;
    }else if (section == 1){
    
        return self.model.top[0].title;
    
    }else{
    
        return self.model.values[section - 2].title;
    
    }



}

-(NSURL *)ReusableViewHedaIVForSection:(NSInteger)section{
    if (section == 0) {
        return self.model.news[0].icon.im_URL;
    }else if(section == 1){
    
        return self.model.top[0].icon.im_URL;
    }else{
        return self.model.values[section - 2].icon.im_URL;
    
    }


}

-(NSString *)ReusableViewSmallTitleLbForSection:(NSInteger)section{
    if (section == 0 || section == 1) {
       return nil;
    }else{
    
        return self.model.values[section-2].desc;
    }
    
}

-(NSURL *)dateURLForSection:(NSInteger)section Row:(NSInteger)row{
    if (section == 0) {
        return self.model.news[0].pets[row].url.im_URL;
    }else if (section == 1){
        return self.model.top[0].pets[row].url.im_URL;
    
    }else{
    
        return self.model.values[section - 2].pets[row].url.im_URL;
    }
    
}

@end






