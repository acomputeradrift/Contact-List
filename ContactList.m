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
    for (Contact *contact in self.contactListArray)
    {
        NSLog (@"Name:%@\nEmail:%@", contact.name, contact.email);
    }
}
@end


