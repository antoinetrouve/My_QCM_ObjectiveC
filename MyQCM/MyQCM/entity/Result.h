//
//  Result.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Mcq.h"

@interface Result : NSObject
@property(nonatomic) int score;
@property(nonatomic) BOOL isCompleted;
@property(nonatomic,strong) User* user;
@property(nonatomic,strong) Mcq* mcq;
@end
