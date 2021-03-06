//
//  Answer.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"


@interface Answer : NSObject
// attribut valeur correspond à la valeur de la réponse
@property (strong, nonatomic) NSString* value;
@property (nonatomic) BOOL isValid;
@property (strong,nonatomic) NSDate* createdAt;
@property (strong,nonatomic) NSDate* updatedAt;
@property (strong, nonatomic) Question* question;
@end
