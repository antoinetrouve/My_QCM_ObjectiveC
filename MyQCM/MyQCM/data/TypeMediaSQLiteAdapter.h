//
//  TypeMediaSQLiteAdapter.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "TypeMedia.h"

@interface TypeMediaSQLiteAdapter : NSObject
-(void)insert:(TypeMedia *)typeMedia;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) typeMedia;
-(void)update:(NSManagedObject *) managedObject withTypeMedia:(TypeMedia *) typeMedia;
-(void)remove:(NSManagedObject *) typeMedia;

@end
