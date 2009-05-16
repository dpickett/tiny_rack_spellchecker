Feature: Mispelled Replacement Suggestion
In order to provide quality content 
and a richer experience for users of the TinyMCE editor
They should be able to get a list of suggested replacements for 
a misspelled word

  Scenario: I request replacement suggestions for a mispelled word
    Given I have entered the word 'shesells'
    When I request possible replacements
    Then I should get a response
    And I should get an array of results
    And I should see 'seashells' as a replacement option
    And I should get a position identifier so I can perform a valid replacement

  Scenario: I request replacement suggestions for a properly spelled word
    Given I have entered the word 'seashells'
    When I request possible replacements
    Then I should get a response
    And I should get an array of results

