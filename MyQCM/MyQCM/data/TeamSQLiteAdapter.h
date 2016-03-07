//
//  TeamSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Team.h"
@interface TeamSQLiteAdapter : NSObject
-(void)insert:(Team *)team;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) team;
-(void)update:(NSManagedObject *) managedObject withCity:(Team *) team;
-(void)remove:(NSManagedObject *) team;
@end
