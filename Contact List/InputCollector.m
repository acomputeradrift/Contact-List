//
//  InputCollector.m
//  Contact List
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *)inputForPrompt:(NSString *)promptString
{
    char inputChars[255];
    printf("%s", [promptString UTF8String]);
    fgets(inputChars, 255, stdin);
    NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return finalInputString;
}
@end
