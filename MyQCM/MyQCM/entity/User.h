//
//  User.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Team.h"

@interface User : NSObject
@property(nonatomic,strong) NSString* name;
@property(nonatomic,strong) Team* team;
@property(nonatomic,strong) NSDate* createdAt;
@property(nonatomic,strong) NSDate* updatedAt;
@property(nonatomic,strong) NSArray* results;
@end
