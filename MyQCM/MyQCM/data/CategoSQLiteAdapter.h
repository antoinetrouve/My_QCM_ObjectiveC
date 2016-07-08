//
//  CategoSQLiteAdpater.h
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Catego.h"

@interface CategoSQLiteAdapter : NSObject
-(void)insert:(Catego *)catego;
-(NSArray*)getAll;
-(NSManagedObject*)getById:(NSManagedObject *) catego;
-(void)update:(NSManagedObject *) managedObject withCatego:(Catego *) catego;
-(void)remove:(NSManagedObject *) catego;
@end
