Feature: Test flow login and pelanggan at "kasirAja"

  Background: 
    Given i am on the login page

  Scenario: User can't login using empty password
    When i input email as "<email>" and password as "<password>"
    And i click on button login
    Then i must remain on login page displaying a message '<errorMessageLogin>'

    Examples: 
      | email                | password    | errorMessageLogin                  |
      | fares.tris@gmail.com |             | "password" is not allowed to be empty |

  Scenario: User can login using valid data
    When i input email as "<email>" and password as "<password>"
    And i click on button login
    Then i must navigate to dashboard page

    Examples: 
      | email                | password     | 
      | fares.tris@gmail.com | tokopedia123 | 

  Scenario: User can't add customer without input customer name
    Given i am on the dashboard page
    And i click on pelanggan menu
    And i click on button tambah
    And i input name as "<name>" and phonenumber as "<phonenumber>" and address as "<address>" and note as "<note>"     
    When i click on button simpan
    Then i see displaying a error message '<errorMessageCstmr>'

    Examples:
     | name | phonenumber  | address | note              | errorMessageCstmr                 |
     |      | 082154564214 | bekasi  | tes fail customer | "name" is not allowed to be empty |
  
  Scenario: User can add customer with valid input
    Given i am on the dashboard page
    And i click on pelanggan menu
    And i click on button tambah
    And i input name as "<name>" and phonenumber as "<phonenumber>" and address as "<address>" and note as "<note>"     
    When i click on button simpan
    Then i see a successful message

    Examples:
     | name         | phonenumber  | address    | note           |
     | add customer | 082112725015 | bekasi     | tes customer   | 

 