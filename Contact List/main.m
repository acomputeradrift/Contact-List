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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        while (gameOn == YES){
            
            InputCollector *inputHandler = [[InputCollector alloc] init];
            NSString *collected = [inputHandler inputForPrompt:@"What would you like do next?\nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application\nEnter:"];
           
            
            if ([collected isEqualToString:@"new"])
            {
                
               //NSLog (@"Create a new contact");
                InputCollector *newContactHandler = [[InputCollector alloc] init];
                Contact *newContact = [[Contact alloc] init];
                newContact.name = [newContactHandler inputForPrompt:@"Please enter the new contact name:"];
                newContact.email = [newContactHandler inputForPrompt:@"Please enter the new contact email:"];
//                NSString *newContact = [newContactHandler inputForPrompt:@"Please enter the new contact name:"];
//                 NSLog (@"You have created a new contact called %@", newContact);
            }
            if ([collected isEqualToString:@"list"])
            {
                NSLog (@"List all contacts");
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
