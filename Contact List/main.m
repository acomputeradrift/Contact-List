//
//  main.m
//  Contact List
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactListHandler = [[ContactList alloc] init];
        
        
        BOOL gameOn = YES;
        while (gameOn == YES){
            
            InputCollector *inputHandler = [[InputCollector alloc] init];
            NSString *rawInput = [inputHandler inputForPrompt:@"What would you like do next?\nnew - Create a new contact \nlist - List all contacts \nshow - will show contact a index number \nquit - Exit Application\nEnter:"];
            NSArray *splitInput = [rawInput componentsSeparatedByString:@" "];
            NSString * collected = [splitInput firstObject];
            
            if ([collected isEqualToString:@"new"])
            {
                
               //NSLog (@"Create a new contact");
                InputCollector *newContactHandler = [[InputCollector alloc] init];
                Contact *newContact = [[Contact alloc] init];
                newContact.name = [newContactHandler inputForPrompt:@"Please enter the new contact name:"];
                newContact.email = [newContactHandler inputForPrompt:@"Please enter the new contact email:"];
                [contactListHandler addContact:newContact];
               // NSLog (@"You have added a new contact called %@ with the email address %@", newContact.name, newContact.email);
            }
            
            
            if ([collected isEqualToString:@"list"])
            {
                [contactListHandler printAllContacts];
            }
            
            if ([collected isEqualToString:@"show"]) {
                NSString *choiceIndex = splitInput[1];
                
                NSInteger choiceNumber = [choiceIndex integerValue];
                // NO ERROR CHECKING
                [contactListHandler listContact:(int)choiceNumber];
            }
            
            if ([collected isEqualToString:@"quit"])
            {
                gameOn = NO;
                continue;
            }
        }
    }
    return 0;
}
