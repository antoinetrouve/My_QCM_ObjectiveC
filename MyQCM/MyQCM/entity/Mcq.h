//
//  Mcq.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "Catego.h"
#import "Result.h"

@interface Mcq : NSObject
{
    NSString* name;
    Boolean* isActif;
    NSTimer* countdown;
    NSDate* diffDeb;
    NSDate* diffEnd;
    NSDate* createdAt;
    NSDate* updatedAt;
    NSArray* questions;
    Catego* catego;
    NSArray* results;
}
@property(strong, nonatomic) NSString* name;
@property(nonatomic) Boolean* isActif;
@property(strong, nonatomic) NSTimer* countdown;
@property(strong, nonatomic) NSDate* diffDeb;
@property(strong, nonatomic) NSDate* diffEnd;
@property(strong, nonatomic) NSDate* createdAt;
@property(strong, nonatomic) NSDate* updatedAt;
@property(strong, nonatomic) NSArray* questions;
@property(strong, nonatomic) Catego* catego;
@property(strong, nonatomic) NSArray* results;
@end
