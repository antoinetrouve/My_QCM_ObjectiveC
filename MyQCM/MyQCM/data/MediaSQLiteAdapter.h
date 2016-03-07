//
//  MediaSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Media.h"

@interface MediaSQLiteAdapter : NSObject
-(void)insert:(Media *)media;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) media;
-(void)update:(NSManagedObject *) managedObject withCity:(Media *) media;
-(void)remove:(NSManagedObject *) media;
@end
