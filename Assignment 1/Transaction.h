//
//  Transaction.h
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//
//  This is an abstract class and will never have instances of it created. It simply exists for the
//  other transaction classes to inherit it's functions from.
//
//
//
#import <Foundation/Foundation.h>
@class BankAccount;
#import "BankAccount.h"

@interface Transaction : NSObject {
    //This stores the amount of the transaction as a positive double regardless of whether you are depositing or withdrawing
    double amount;
}


- (void) postToAccount: (BankAccount *) account;
- (NSString *) description;
- (void)setAmount: (double) a;


@end
