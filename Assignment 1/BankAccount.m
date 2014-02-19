//
//  BankAccount.m
//  Assignment 1
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import "BankAccount.h"
#import "Transaction.h"
@implementation BankAccount


-(id)init
{
    owner=[NSString stringWithFormat:@"Unknown"];
    balance=0;
    transactionCount=0;
    transactions=[[NSMutableArray alloc]init];
    
    return self;
    
}

//Purpose: This method sets the name of the account holder
//Input: NSString
//Return: Nothing
- (void)setOwner:(NSString*) o
{
    owner=o;
}

//Purpose: This method returns the name of the account holder
//Input: Nothing
//Return: NSString
- (NSString*)getOwner
{
    return owner;
}

//Purpose: returns the accounts balance
//Input: Nothing
//Return: double
- (double)getBalance
{
    return balance;
}

//Purpose: This method deposits the input amount to the accounts balance
//Input: A double
//Return: Nothing
- (void) deposit: (double) amount
{
    balance=+amount;
}

//Purpose: Withdraws the input amount from the accounts balance
//Input: A double
//Return: Nothing
- (void) withdraw: (double) amount
{
    balance-=amount;
}

//Purpose: Adds a transaction to the bank accounts array of transactions
//Input: A transaction
//Return: nothing
- (void) postTransaction: (Transaction *) aTransaction
{
    [aTransaction postToAccount: self];
    [transactions addObject:aTransaction];
    transactionCount++;
}

//Purpose: Returns the number of transactions
//Input: Nothing
//Return: An integer
- (int) numberOfTransactions
{
    return  transactionCount;
}

//Purpose: Prints out the information about the bank account
//Input: nothing
//Return: A string
- (NSString *) description
{
    return [NSString stringWithFormat:@"Bank Account holder: %@ Balance: %f Number of Transactions: %i", owner, balance, transactionCount];
}


@end
