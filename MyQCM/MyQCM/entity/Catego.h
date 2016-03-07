//
//  Catego.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mcq.h"

@interface Catego : NSObject
{
    NSString* name;
    NSDate* createdAt;
    NSDate* updatedAt;
    NSArray* mcqs;
}

@property(strong, nonatomic) NSString* name;
@property(strong, nonatomic) NSDate* createdAt;
@property(strong, nonatomic) NSDate* updatedAt;
@property(strong, nonatomic) NSArray* mcqs;

@end
