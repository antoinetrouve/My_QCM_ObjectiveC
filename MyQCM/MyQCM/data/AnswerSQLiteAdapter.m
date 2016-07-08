//
//  AnswerSQLiteAdapter.m
//  MyQCM
//
//  Created by etudiant on 07/03/2016.
//  Copyright © 2016 iia. All rights reserved.
//

#import "AnswerSQLiteAdapter.h"

@implementation AnswerSQLiteAdapter

-(void)insert:(Answer *)answer
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET TABLE
    NSManagedObject* managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Answer" inManagedObjectContext:context];
    
    //INSERT IN TABLE
    [managedObject setValue:answer.value forKey:@"value"];
    [managedObject setValue:[NSNumber numberWithBool:answer.isValid] forKey:@"isValid"];
    [managedObject setValue:answer.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:answer.createdAt forKey:@"createdAt"];
    [managedObject setValue:answer.question forKey:@"question"];
    
    [appDelegate saveContext];

}
-(NSArray*)getAll
{
    NSArray* answers = [NSArray new];
    
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //REQUEST GET DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    //GET TABLE FOR REQUEST
    fetchRequest.entity = [NSEntityDescription entityForName:@"Answer" inManagedObjectContext:context];
    
    //GET ALL ANSWER DB OBJECT
    answers = [context executeFetchRequest:fetchRequest error:nil];
    
    return answers;
}
-(NSManagedObject*)getById:(NSManagedObject *) answer
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //GET ID ANSWER
    NSManagedObject *managedObject = [context objectWithID:answer.objectID];
    
    return managedObject;
}
-(void)update:(NSManagedObject *) managedObject withAnswer:(Answer *) answer
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    
    //UPDATE IN TABLE
    [managedObject setValue:answer.value forKey:@"value"];
    [managedObject setValue:[NSNumber numberWithBool:answer.isValid]forKey:@"isValid"];
    [managedObject setValue:answer.updatedAt forKey:@"updatedAt"];
    [managedObject setValue:answer.createdAt forKey:@"createdAt"];
    
    //SAVE CHANGE
    [appDelegate saveContext];
    
}
-(void)remove:(NSManagedObject *) answer
{
    //DB INSTANCE
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext* context = appDelegate.managedObjectContext;
    
    //DELETE AND SAVE ANSWER
    [context deleteObject:answer];
}
@end
