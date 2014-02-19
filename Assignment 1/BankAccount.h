//
//  BankAccount.h
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Transaction;

@interface BankAccount : NSObject {
    //Stores the name of the bank account holder
    NSString *owner;
    //Stores the amount of the balance
    double balance;
    //An array of all the transactions that come in and out of the account
    NSMutableArray *transactions;
    //Stores the number of transaction that have occured
    int transactionCount;
}


- (void) deposit: (double) amount;
- (void) setOwner: (NSString*) o;
- (NSString*) getOwner;
- (double) getBalance;
- (void) withdraw: (double) amount;
- (void) postTransaction: (Transaction *) aTransaction;
- (int) numberOfTransactions;
- (NSString *) description;

@end
