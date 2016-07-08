//
//  MediaSQLiteAdapter.m
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import "MediaSQLiteAdapter.h"

@implementation MediaSQLiteAdapter
-(void)insert:(Media *)media
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET TABLE
    NSManagedObject* managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Media" inManagedObjectContext:context];
    
    //INSERT IN TABLE
    [managedObject setValue:media.name forKey:@"name"];
    [managedObject setValue:media.url forKey:@"url"];
    [managedObject setValue:media.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:media.createdAt forKey:@"createdAt"];
    [managedObject setValue:media.typeMedia forKey:@"typeMedia"];
    
    [appDelegate saveContext];

}
-(NSArray*)getAll
{
    return nil;
}
-(NSManagedObject*)getById:(NSManagedObject *) media
{
    return nil;
}
-(void)update:(NSManagedObject *) managedObject withCity:(Media *) media
{
    
}
-(void)remove:(NSManagedObject *) media
{
    
}

@end
