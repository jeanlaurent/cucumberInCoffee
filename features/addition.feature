Feature: Addition
	In order to avoid silly mistake
	As a math idiot
	I want to be told the sum of two number

	Scenario: add two numbers
	  Given I have entered 50 in the calculator
	  And I have entered 70 in the calculator
	  When I press add
	  Then the result should be 120 on the screen

	Scenario: substract two numbers
	  Given I have entered 10 in the calculator
	  And I have entered 7 in the calculator
	  When I press substract
	  Then the result should be 3 on the screen

	Scenario: multiply two numbers
	  Given I have entered 3 in the calculator
	  And I have entered 4 in the calculator
	  When I press multiply
	  Then the result should be 12 on the screen