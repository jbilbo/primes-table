Feature: Running app

  Scenario: App just runs
    When I get help for "primes_table"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version|
    And the banner should document that this app's arguments are:
          | num | which is required |

  Scenario: Standard use of execution of the App with an argument
    When I run `primes_table 10`
    Then the multiplication table of primes must be printed on screen
