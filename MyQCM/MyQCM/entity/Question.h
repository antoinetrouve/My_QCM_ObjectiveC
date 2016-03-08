//
//  Question.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Media.h"
#import "Mcq.h"

@interface Question : NSObject
@property(nonatomic, strong) NSString* name;
@property(nonatomic, strong) NSDate* createdAt;
@property(nonatomic, strong) NSDate* updatedAt;
@property(nonatomic, strong) Media* media;
@property(nonatomic, strong) Mcq* mcq;
@property(nonatomic, strong) NSArray* answers;

@end
