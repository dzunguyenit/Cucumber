@paymentFunction
Feature: Payment feature
  As an automation tester
  I want a payment function 
  So that I want to make sure payment correctly

  @CreateAccountAndLogin
  Scenario: Create account, login and verify login successfully
    Given I navigate to Guru bank and click Here link
    When I input with data "automation" to "emailid" textbox
    And I click to "btnLogin" button
    And I register email
    And I open login page
    And I input with variable data "usernameLogin" to "uid" textbox 
    And I input with variable data "passwordLogin" to "password" textbox 
    And I click to "btnLogin" button

  @newCustomer
  Scenario Outline: Create new Customer and get NewCustomerID
    Given I open "New Customer" page
    When I input with data "<CustomerName>" to "name" textbox
    When I input date of birth with data "<DateOfBirth>" to "dob" 
    When I input with data "<Address>" to "addr" textbox
    When I input with data "<City>" to "city" textbox
    When I input with data "<State>" to "state" textbox
    When I input with data "<PIN>" to "pinno" textbox 
    When I input with data "<Phone>" to "telephoneno" textbox 
    When I input with data "<Email>" to "emailid" textbox
    When I input with data "<Password>" to "password" textbox
    And I click to "sub" button
    Then Verify successfully with message "Customer Registered Successfully!!!"
    And I get text UserID "Customer ID"

    Examples: 
      | CustomerName | DateOfBirth | Address | City    | State   | PIN    | Phone      | Email       | Password   |
      | Dam Dao      | 16/10/1989  | Da nang | Da nang | Da nang | 466250 | 4555442476 | randomEmail | 1234567890 |

  @editCustomer
  Scenario Outline: Edit Customer
    Given I open "Edit Customer" page
    When I input with variable data "userID" to "cusid" textbox
    And I click to "AccSubmit" button
    When I input with data "<addressUpdate>" to "addr" textbox
    When I input with data "<cityUpdate>" to "city" textbox
    When I input with data "<stateUpdate>" to "state" textbox
    When I input with data "<PINUpdate>" to "pinno" textbox
    When I input with data "<mobileUpdate>" to "telephoneno" textbox
    When I input with data "<emailUpdate>" to "emailid" textbox
    And I click to "sub" button
    Then Verify successfully with message "Customer details updated Successfully!!!"

    Examples: 
      | addressUpdate | cityUpdate | stateUpdate | PINUpdate | mobileUpdate | emailUpdate |
      | Ha Noi        | Ha Noi     | Ha Noi      |    123456 |   1234567890 | updateEmail |

  @newAccount
  Scenario: Create new account
    Given I open "New Account" page
    When I input with variable data "userID" to "cusid" textbox
    And Select with value "Current" item in dynamic dropdow "selaccount"
    And I input with data "50000" to "inideposit" textbox
    And I click to "button2" button
    And I get text dynamic label "Account ID"
    Then Verify successfully with message "Account Generated Successfully!!!"
    And Verify deposit with value "50000"

  @addDeposit
  Scenario: Add deposit
    Given I open "Deposit" page
    When I input with variable data "accountID" to "accountno" textbox
    And I input with variable data "depositAdd" to "ammount" textbox
    And I input with data "Deposit" to "desc" textbox
    And I click to "AccSubmit" button
    Then Verify successfully with message "Transaction details of Deposit for Account"
    And Verify Current balance is "55000"

  @withDraw
  Scenario: WithDraw money
    Given I open "Withdrawal" page
    When I input with variable data "accountID" to "accountno" textbox
    And I input with variable data "monneyWithDraw" to "ammount" textbox
    And I input with data "Withdraw" to "desc" textbox
    And I click to "AccSubmit" button
    Then Verify successfully with message "Transaction details of Withdrawal for Account"
    #after withdraw money: "40000"
    And Verify money after withdraw is "Current Balance"

  @fundTransfer
  Scenario: Fund Transfer
    Given I open "Fund Transfer" page 
    When I input with variable data "accountID" to "payersaccount" textbox
    And I input with variable data "accountIDPayee" to "payeeaccount" textbox
    And I input with data "10000" to "ammount" textbox
    And I input with data "Transfer" to "desc" textbox
    And I click to "AccSubmit" button
    Then Verify successfully with message "Fund Transfer Details"
    # Money transfer: 10000
    And Verify money transfer is "Amount"

  @balanceEnquiry
  Scenario: Balance enquiry
    Given I open "Balance Enquiry" page
    When I input with variable data "accountID" to "accountno" textbox
    And I click to "AccSubmit" button
    # Current transfer: 30000
    Then Verify current balance is "Balance"
