//
//  CheckTransaction.m
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "CheckTransaction.h"

@implementation CheckTransaction


//Returns a string description of the transaction
- (NSString *) description
{
    
    return [NSString stringWithFormat:@"Transaction type: CheckTransaction  Ammount: %f",amount];
}
@end
