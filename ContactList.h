//
//  ContactList.h
//  Contact List
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray<Contact*> * contactListArray;

- (instancetype)init;

-(void)addContact:(Contact *)newContact;

@end
