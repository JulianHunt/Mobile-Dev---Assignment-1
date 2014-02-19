//
//  Transaction.m
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

-(id)init
{
    amount=0;
    return self;
}

-(void)setAmount:(double)a
{
    amount=a;
}
- (void) postToAccount: (BankAccount *) account
{
    [account deposit:amount];
}

- (NSString *) description
{
    
    return [NSString stringWithFormat:@""];
}
@end
