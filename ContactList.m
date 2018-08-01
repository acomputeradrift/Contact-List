//
//  ContactList.m
//  Contact List
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactListArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
    [self.contactListArray addObject:newContact];
}

- (void)printAllContacts
{
    // for (int i ++)
    
    for (int i = 0; i <  [self.contactListArray count] ;i++) {
        Contact *contact = self.contactListArray[i];
        
        NSLog (@"Index: %i Name: %@ Email: %@", i, contact.name, contact.email);

    }
//    for (Contact *contact in self.contactListArray) // fast enum, to toss out name/meial, but not index number
//    {
//        NSLog (@"Index: %@\nName:%@\nEmail:%@", contact.name, contact.email);
//    }
}
@end


