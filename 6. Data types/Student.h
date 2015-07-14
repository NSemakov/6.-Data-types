//
//  Student.h
//  6. Data types
//
//  Created by Admin on 14.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, Gender){
    GenderMale,
    GenderFemale
};

@interface Student : NSObject
@property (assign,nonatomic) Gender gender;
@end
