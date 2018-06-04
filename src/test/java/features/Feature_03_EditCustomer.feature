@editCustomer
Feature: Edit customer
  As an automation tester
  I want to edit customer
  So that I want to verify all fields is correct message

  Background: User to navigate to Edit customer page
    Given I open "Edit Customer" page

  @TC_01_Edit_CustomerIdCanotEmpty
  Scenario: Edit customer with empty customer ID
    When I input with variable data "TabKeys" to "cusid" textbox 
    Then Verify successfully with message "Customer ID is required"

  @TC_02_Edit_CustomerIdCannotBeNumberic
  Scenario: Edit customer with input numeric value customer ID field
    When I input with data "1236Acc" to "cusid" textbox 
    Then Verify successfully with message "Characters are not allowed"

  @TC_03_Edit_CustomerIdCannotHaveSpecialCharacter
  Scenario: Edit customer with input special value customer ID field
    When I input with data "name!@#" to "cusid" textbox 
    Then Verify successfully with message "Special characters are not allowed"

  @TC_04_Edit_ValidCustomerId
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button

  @TC_08_Edit_AddressCannotEmpty
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with variable data "TabKeys" to "addr" textbox
    Then Verify successfully with message "Address Field must not be blank"

  @TC_09_Edit_CityCannotEmpty
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with variable data "TabKeys" to "city" textbox 
    Then Verify successfully with message "City Field must not be blank"

  @TC_10_Edit_CityCannotBeNumberic
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with data "123456" to "city" textbox 
    Then Verify successfully with message "Numbers are not allowed"

  @TC_11_Edit_CityCannotHaveSpecialCharacter
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with data "name!@#" to "city" textbox 
    Then Verify successfully with message "Special characters are not allowed"

  @TC_12_Edit_StateCannotEmpty
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with variable data "TabKeys" to "state" textbox 
    Then Verify successfully with message "State must not be blank"

  @TC_13_Edit_StateCannotBeNumberic
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with data "123456" to "state" textbox 
    Then Verify successfully with message "Numbers are not allowed"

  @TC_14_Edit_StateCannotHaveSpecialCharacter
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox
    And I click to "AccSubmit" button
    When I input with data "name!@#" to "state" textbox
    Then Verify successfully with message "Special characters are not allowed"

  @TC_15_Edit_PinMustBeNumeric
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with data "PIN123" to "pinno" textbox
    Then Verify successfully with message "Characters are not allowed"

  @TC_16_Edit_PinCannotEmpty
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox
    And I click to "AccSubmit" button
    When I input with variable data "TabKeys" to "pinno" textbox
    Then Verify successfully with message "PIN Code must not be blank"

  @TC_17_Edit_PinMustHave6Digits
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button 
    When I input with data "123" to "pinno" textbox 
    Then Verify successfully with message "PIN Code must have 6 Digits"

  @TC_18_Edit_PinCannotHaveSpecialCharacter
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with data "name!@#" to "pinno" textbox 
    Then Verify successfully with message "Special characters are not allowed"

  @TC_19_Edit_TelephoneCannotEmpty
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with variable data "TabKeys" to "telephoneno" textbox 
    Then Verify successfully with message "Mobile no must not be blank"

  @TC_20_Edit_TelephoneCannotHaveSpecialCharacter
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button  
    When I input with data "name!@#" to "telephoneno" textbox
    Then Verify successfully with message "Special characters are not allowed"

  @TC_21_Edit_EmailCannotEmpty
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button
    When I input with variable data "TabKeys" to "emailid" textbox 
    Then Verify successfully with message "Email-ID must not be blank"

  @TC_22_Edit_EmailIncorrectFormat
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox
    And I click to "AccSubmit" button
    When I input with data "Guru99@" to "emailid" textbox 
    Then Verify successfully with message "Email-ID is not valid"

  @TC_23_Edit_EmailCannotHaveBlankSpace
  Scenario: Edit customer with input special value customer ID field
    When I input with variable data "userID" to "cusid" textbox 
    And I click to "AccSubmit" button 
    When I input with variable data "SpaceKeys" to "emailid" textbox 
    Then Verify successfully with message "First character can not have space"
