//
//  DepositTransaction.m
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "DepositTransaction.h"

@implementation DepositTransaction



//Returns a string description of the transaction
- (NSString *) description
{
    
    return [NSString stringWithFormat:@"Transaction type: DepositTransaction  Ammount: %f",amount];
}
@end
