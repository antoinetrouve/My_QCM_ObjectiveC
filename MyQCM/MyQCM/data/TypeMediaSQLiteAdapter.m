//
//  TypeMediaSQLiteAdapter.m
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import "TypeMediaSQLiteAdapter.h"
#import "AppDelegate.h"

@implementation TypeMediaSQLiteAdapter
-(void)insert:(TypeMedia *)typeMedia
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET TABLE
    NSManagedObject* managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"TypeMedia" inManagedObjectContext:context];
    
    //INSERT IN TABLE
    [managedObject setValue:typeMedia.name forKey:@"name"];
    [managedObject setValue:typeMedia.createdAt forKey:@"createdAt"];
    [managedObject setValue:typeMedia.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:typeMedia.medias forKey:@"medias"];
    
    [appDelegate saveContext];
}

-(NSArray*)getAll
{
    NSArray* typeMedias = [NSArray new];
    
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //REQUEST GET DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    //GET TABLE FOR REQUEST
    fetchRequest.entity = [NSEntityDescription entityForName:@"TypeMedia" inManagedObjectContext:context];
    
    //GET ALL TYPE MEDIA DB OBJECT
    typeMedias = [context executeFetchRequest:fetchRequest error:nil];
    
    return typeMedias;
}

-(NSManagedObject*)getById:(NSManagedObject *) typeMedia
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET ID TYPE MEDIA
    NSManagedObject *managedObject = [context objectWithID:typeMedia.objectID];
    
    return managedObject;
}

-(void)update:(NSManagedObject *) managedObject withTypeMedia:(TypeMedia *) typeMedia
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    
    //UPDATE IN TABLE
    [managedObject setValue:typeMedia.name forKey:@"name"];
    [managedObject setValue:typeMedia.updatedAt forKey:@"updated"];
    
    //SAVE CHANGE
    [appDelegate saveContext];
    
}
-(void)remove:(NSManagedObject *) typeMedia
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //DELETE AND SAVE TYPE MEDIA
    [context deleteObject:typeMedia];
}

@end
