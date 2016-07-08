//
//  UserSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "User.h"

@interface UserSQLiteAdapter : NSObject
-(void)insert:(User *)user;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) user;
-(void)update:(NSManagedObject *) managedObject withCity:(User *) user;
-(void)remove:(NSManagedObject *) user;
@end
