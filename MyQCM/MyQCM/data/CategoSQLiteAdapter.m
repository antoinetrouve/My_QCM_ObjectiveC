//
//  CategoSQLiteAdpater.m
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import "CategoSQLiteAdapter.h"

@implementation CategoSQLiteAdapter
-(void)insert:(Catego *)catego
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET TABLE
    NSManagedObject* managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Catego" inManagedObjectContext:context];
    
    //INSERT IN TABLE
    [managedObject setValue:catego.name forKey:@"name"];
    [managedObject setValue:catego.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:catego.createdAt forKey:@"createdAt"];

}
-(NSArray*)getAll
{
    NSArray* categories = [NSArray new];
    
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //REQUEST GET DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    //GET TABLE FOR REQUEST
    fetchRequest.entity = [NSEntityDescription entityForName:@"Catego" inManagedObjectContext:context];
    
    //GET ALL CATEGO DB OBJECT
    categories = [context executeFetchRequest:fetchRequest error:nil];
    
    return categories;
}
-(NSManagedObject*)getById:(NSManagedObject *) catego
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET ID CATEGO
    NSManagedObject *managedObject = [context objectWithID:catego.objectID];
    
    return managedObject;
}
-(void)update:(NSManagedObject *) managedObject withCatego:(Catego *) catego
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    
    //UPDATE IN TABLE
    [managedObject setValue:catego.name forKey:@"name"];
    [managedObject setValue:catego.updatedAt forKey:@"updatedAt"];
    
    //SAVE CHANGE
    [appDelegate saveContext];
}
-(void)remove:(NSManagedObject *) catego
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //DELETE AND SAVE CATEGO
    [context deleteObject:catego];
}

@end
