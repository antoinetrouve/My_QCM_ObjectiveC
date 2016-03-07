//
//  QuestionSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Question.h"

@interface QuestionSQLiteAdapter : NSObject
-(void)insert:(Question *)question;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) question;
-(void)update:(NSManagedObject *) managedObject withCity:(Question *) question;
-(void)remove:(NSManagedObject *) question;
@end
