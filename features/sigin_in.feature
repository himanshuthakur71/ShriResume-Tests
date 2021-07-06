#Author: himanshu@madhulata.org

Feature: Shri Sign In functionality

	Scenario: User logs in

		Given I am on the loginpage
		When I log in
		Then I should see Deshboard Page


	Scenario: Invaild User logs in

		Given I am on the loginpage
		When I try invaild log in
		Then I should see validation error
