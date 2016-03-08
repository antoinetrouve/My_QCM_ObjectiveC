//
//  McqSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Mcq.h"

@interface McqSQLiteAdapter : NSObject
-(void)insert:(Mcq *)mcq;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) mcq;
-(void)update:(NSManagedObject *) managedObject withMcq:(Mcq *) mcq;
-(void)remove:(NSManagedObject *) mcq;
@end
