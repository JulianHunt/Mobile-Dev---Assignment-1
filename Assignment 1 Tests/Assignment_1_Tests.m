//
//  Assignment_1_Tests.m
//  Assignment 1 Tests
//
//  Created by Julian Hunt on 2/8/2014.
//  Copyright (c) 2014 Julian Hunt. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BankAccount.h"
#import "Transaction.h"
#import "DepositTransaction.h"
#import "WithdrawTransaction.h"
#import "CheckTransaction.h"
@interface Assignment_1_Tests : XCTestCase

@end

@implementation Assignment_1_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    
}

//This test method creates a deposit transaction and calls the post transaction method to make sure it updates the balance correctly

-(void)testDepositTransaction
{
    
    double test=9;
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    
    DepositTransaction * testDepositTrans = [[DepositTransaction alloc]init];
    [testDepositTrans setAmount:9];
    
    [testBank postTransaction: testDepositTrans];
    XCTAssertEqual(test, [testBank getBalance], @"Deposit Transaction failed");
}

//This test method creates a Withdraw transaction and calls the post transaction method to make sure it updates the balance correctly

-(void)testWithdrawTransaction
{
    double test=-8;
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    
    WithdrawTransaction * testWithdrawTrans = [[WithdrawTransaction alloc]init];
    [testWithdrawTrans setAmount:8];
    
    [testBank postTransaction: testWithdrawTrans];
    XCTAssertEqual(test, [testBank getBalance], @"Deposit Transaction failed");
}

//This test method creates a Check transaction and calls the post transaction method to make sure it updates the balance correctly

-(void)testCheckTransaction
{
    double test=7;
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    
    CheckTransaction * testCheckTrans = [[CheckTransaction alloc]init];
    [testCheckTrans setAmount:7];
    
    [testBank postTransaction: testCheckTrans];
    XCTAssertEqual(test, [testBank getBalance], @"Deposit Transaction failed");
}

//This test method creates a deposit transaction and tests the description method

-(void)testDepositDescription
{
    DepositTransaction * testDepositTrans = [[DepositTransaction alloc]init];
    [testDepositTrans setAmount:9];
    double temptwo = 9;
    NSString * temp = [NSString stringWithFormat:@"Transaction type: DepositTransaction  Ammount: %f",temptwo];
    
    XCTAssertEqualObjects(temp, [testDepositTrans description], @"Description method failed");
}

//This test method creates a withdraw transaction and tests the description method

-(void)testWithdrawDescription
{
    
    WithdrawTransaction * testWithdrawTrans = [[WithdrawTransaction alloc]init];
    [testWithdrawTrans setAmount:9];
    double temptwo = 9;
    NSString * temp = [NSString stringWithFormat:@"Transaction type: WithdrawTransaction  Ammount: %f",temptwo];
    
    XCTAssertEqualObjects(temp, [testWithdrawTrans description], @"Description method failed");
}

//This test method creates a check transaction and tests the description method

-(void)testCheckDescription
{
    CheckTransaction * testCheckTrans = [[CheckTransaction alloc]init];
    [testCheckTrans setAmount:9];
    double temptwo = 9;
    NSString * temp = [NSString stringWithFormat:@"Transaction type: CheckTransaction  Ammount: %f",temptwo];
    
    XCTAssertEqualObjects(temp, [testCheckTrans description], @"Description method failed");
}


//This test method creates a tes bank and adds some transactions to it and then tests the number of transactions method
-(void)testNumberOfTransaction
{
    DepositTransaction * testDepositTrans = [[DepositTransaction alloc]init];
    [testDepositTrans setAmount:9];
    
    WithdrawTransaction * testWithdrawTrans = [[WithdrawTransaction alloc]init];
    [testWithdrawTrans setAmount:8];
    
    CheckTransaction * testCheckTrans = [[CheckTransaction alloc]init];
    [testCheckTrans setAmount:7];
    
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    [testBank postTransaction:testDepositTrans];
    [testBank postTransaction:testWithdrawTrans];
    [testBank postTransaction:testCheckTrans];
    
    int temp = 3;
    XCTAssertEqual(temp, [testBank numberOfTransactions], @"Number of transactions failed");
    
}

//This method tests the get balance method of the bank account class

-(void)testGetBalance
{
    CheckTransaction * testCheckTrans = [[CheckTransaction alloc]init];
    [testCheckTrans setAmount:7];
    
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    [testBank postTransaction:testCheckTrans];
    
    double temp = 7;
    XCTAssertEqual(temp, [testBank getBalance], @"Get Balance Failed");
}

//This method tests the deposit method of the bank account class

-(void)testDeposit
{
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    [testBank deposit:100];
    double temp=100;
    XCTAssertEqual(temp, [testBank getBalance], @"Deposit Failed");
}

//This method tests the withdraw method of the bank account class

-(void)testWithdraw
{
    
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    [testBank withdraw:100];
    double temp=-100;
    XCTAssertEqual(temp, [testBank getBalance], @"Withdraw Failed");
}

//This method test the description method of the bank account class

-(void)testBankDescription
{
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    
    double temp = 0;
    int tempTwo=0;
    
    NSString * tempthree =[NSString stringWithFormat:@"Bank Account holder: Julian Hunt Balance: %f Number of Transactions: %i", temp, tempTwo];
    
    XCTAssertEqualObjects(tempthree, [testBank description], @"Description failed");
    
}

//This method tests the set owner of the bank account class.

-(void)testSetOwner
{
    BankAccount *  testBank= [[BankAccount alloc]init];
    [testBank setOwner:@"Julian Hunt"];
    
    NSString * temp = [NSString stringWithFormat:@"Julian Hunt"];
    
    XCTAssertEqualObjects(temp, [testBank getOwner], @"Set Owner Failed");
}












@end
