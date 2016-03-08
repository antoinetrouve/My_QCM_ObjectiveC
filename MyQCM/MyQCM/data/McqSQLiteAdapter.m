//
//  McqSQLiteAdapter.m
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import "McqSQLiteAdapter.h"

@implementation McqSQLiteAdapter
-(void)insert:(Mcq *)mcq
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET TABLE
    NSManagedObject* managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Mcq" inManagedObjectContext:context];
    
    //INSERT IN TABLE
    [managedObject setValue:mcq.name forKey:@"name"];
    [managedObject setValue:[NSNumber numberWithBool:mcq.isActif] forKey:@"isActif"];
    [managedObject setValue:mcq.countdown forKey:@"countdown"];
    [managedObject setValue:mcq.diffDeb forKey:@"diffDeb"];
    [managedObject setValue:mcq.diffEnd forKey:@"diffEnd"];
    [managedObject setValue:mcq.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:mcq.createdAt forKey:@"createdAt"];
    [managedObject setValue:mcq.catego forKey:@"catego"];
    [managedObject setValue:mcq.questions forKey:@"questions"];
    
    [appDelegate saveContext];
}
-(NSArray*)getAll
{
    NSArray* mcqs = [NSArray new];
    
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //REQUEST GET DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    //GET TABLE FOR REQUEST
    fetchRequest.entity = [NSEntityDescription entityForName:@"Mcq" inManagedObjectContext:context];
    
    //GET ALL MCQ DB OBJECT
    mcqs = [context executeFetchRequest:fetchRequest error:nil];
    
    return mcqs;
}
-(NSManagedObject*)getById:(NSManagedObject *) mcq
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET ID MCQ
    NSManagedObject *managedObject = [context objectWithID:mcq.objectID];
    
    return managedObject;
}
-(void)update:(NSManagedObject *) managedObject withMcq:(Mcq *) mcq
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    
    //UPDATE IN TABLE
    [managedObject setValue:mcq.name forKey:@"name"];
    [managedObject setValue:[NSNumber numberWithBool:mcq.isActif] forKey:@"isActif"];
    [managedObject setValue:mcq.countdown forKey:@"countdown"];
    [managedObject setValue:mcq.diffDeb forKey:@"diffDeb"];
    [managedObject setValue:mcq.diffEnd forKey:@"diffEnd"];
    [managedObject setValue:mcq.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:mcq.questions forKey:@"questions"];

    //SAVE CHANGE
    [appDelegate saveContext];
}
-(void)remove:(NSManagedObject *) mcq
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //DELETE AND SAVE MCQ
    [context deleteObject:mcq];
}

@end
