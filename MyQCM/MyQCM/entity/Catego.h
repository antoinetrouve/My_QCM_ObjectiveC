//
//  Catego.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Catego : NSObject
@property(strong, nonatomic) NSString* name;
@property(strong, nonatomic) NSDate* createdAt;
@property(strong, nonatomic) NSDate* updatedAt;
@property(strong, nonatomic) NSArray* mcqs;
@end
