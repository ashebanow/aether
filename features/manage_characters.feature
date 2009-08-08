Feature: Manage save_characters
  In order to keep track of my AE characters
  as an AE Player
  I want to be able to see a clear and concise summary of all my characters
  
  Scenario: See an empty list of existing characers
    Given I am logged in
    And I have not created any characters
    Then I should see an empty list of characters
  
  Scenario: Be able to create a character
    Given I am logged in
    And I click the New link
    And I fill in the character information
    And I click Save
    Then I should see my new character in the list
