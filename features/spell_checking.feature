Feature: Spell Checking
  In order to provide quality content and a richer experience for users of TinyMCE
  They should be able to perform spell checking on their content

  Scenario: I perform spell checking with a mispelled word
    Given I have supplied the content 'Sally sells shesells down by the seashore'
    When I do a spellcheck
    Then I should get a response
    And there should be 1 error

  Scenario: I perform spell checking with perfect spelling
    Given I have supplied the content 'Sally sells seashells down by the seashore'
    When I do a spellcheck
    Then I should get a response
    And there should be 0 errors

