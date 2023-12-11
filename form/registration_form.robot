*** Settings ***
Resource    resource.robot
Library    OperatingSystem

*** Test Cases ***
Scenario
    Given User is in Registration form Page
    When Registration Form should be ready
    And User select make
    And User select Models
    And User fill the field cylinder capacity with value
    And User fill the field engine with value
    And User click in button Calendar
    And User select Number of Seats
    And User select Number of Seats motor
    And User select Fuel Type
    And User fill the field payload with value
    And User fill the field total with value
    And User fill the field list price with value
    And User fill the field license plate number with value
    And User fill the field annual mileage with value
    And User click in Next
    When User to see the page Enter Insurante Date
    And User fill field first name
    And User fill field last name
    When User click in button Calendar Date of Birth
    And User select Gender
    And User fill field street adress
    And User select country
    And User fill field zip code
    And User fill field city
    And User select occupation
    And User select hobbies
    And User fill field website
    And User click next
    When User to see the page Enter Product Data
    And User select start date
    And User select insurance Selenium
    And User select merit rating
    And User select damage insurance
    And User select Optional products
    And User select courtesy car
    And User click next button
    When User to see page select price
    And User select Option
    And User click in the button next
    And User to see page send quote
    And User fill field email
    And User fill field phone
    And User fill field username
    And User fill field password
    And User fill field confirm password
    And User fill field comments
    And User click in the button send email
    Then User validate success message
