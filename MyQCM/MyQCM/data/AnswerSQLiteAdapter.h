//
//  AnswerSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Answer.h"

@interface AnswerSQLiteAdapter : NSObject
-(void)insert:(Answer *)answer;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) answer;
-(void)update:(NSManagedObject *) managedObject withAnswer:(Answer *) answer;
-(void)remove:(NSManagedObject *) answer;
@end
