//
//  ResultSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Result.h"

@interface ResultSQLiteAdapter : NSObject
-(void)insert:(Result *)result;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) result;
-(void)update:(NSManagedObject *) managedObject withCity:(Result *) result;
-(void)remove:(NSManagedObject *) result;
@end
