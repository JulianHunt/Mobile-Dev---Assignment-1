//
//  WithdrawTransaction.m
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "WithdrawTransaction.h"

@implementation WithdrawTransaction

//Takes a bank account as input and deposits the amount of the transaction
- (void) postToAccount: (BankAccount *) account
{
    [account withdraw:amount];
}

//Returns a string description of the transaction
- (NSString *) description
{
    
    return [NSString stringWithFormat:@"Transaction type: WithdrawTransaction  Ammount: %f",amount];
}
@end
