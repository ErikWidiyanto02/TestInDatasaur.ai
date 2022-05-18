
@Directmessage
Feature: Direct message in personal chat

  @Smoke @Regression
  Scenario: send a text in personal chat
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "Hello" was entered
    Then The text sent and text is black
    
  @Regression
  Scenario: send a link in personal chat
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "www.google.com" was entered
    Then The link sent and link is blue
  
  @Regression
  Scenario: send a number in personal chat
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "+628888888888" was entered
    Then The number sent and number is blue
    
  @Regression
  Scenario: send a text with star symbol in front and back text in personal chat
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "*Ping*" was entered
    Then The text sent
    And text is bold
    And the color is black
    
  @Regression
  Scenario: send a text with underscore symbol in front and back text in personal chat
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "_Ping_" was entered
    Then The text sent
    And text is italic
    And the color is black
  
  @Regression
  Scenario: send a bold italic in personal chat
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "_*Ping*_" was entered
    Then The text sent
    And text is bold italic
    And the color is black
    
  @Regression
  Scenario: send a emoji with emoji code
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When ":raised" was entered
    Then list of raised emoji is displayed
    When choose one of the list emoji
    Then the ":raised" changed into emoji
    When emoji was entered
    Then one raised emoji is sent
    
  @Regression
  Scenario: send a text then delete message for everyone
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "Ping" was entered
    Then The text sent and text is black
    When mouse hover in right side of message
    Then arrow down is visible
    When arrow down clicked
    Then delete message is displayed
    When delete message clicked
    Then whatsapp desktop showing popup delete menu
    When Choose delete for everyone
    Then message change text to you deleted this message
  
  @Regression
  Scenario: send a text then delete message for me
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "Ping" was entered
    Then The text sent and text is black
    When mouse hover in right side of message
    Then arrow down is visible
    When arrow down clicked
    Then delete message is displayed
    When delete message clicked
    Then whatsapp desktop showing popup delete menu
    When Choose delete for me
    Then the message is gone
    
  @Regression
  Scenario: send a text then delete but cancel delete message
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "Ping" was entered
    Then The text sent and text is black
    When mouse hover in right side of message
    Then arrow down is visible
    When arrow down clicked
    Then delete message is displayed
    When delete message clicked
    Then whatsapp desktop showing popup delete menu
    When Choose no
    Then the message is still available in private chat
  
  @Regression
  Scenario: text was sent and read with someone then delete message
    Given list of chat is diplayed
    When choose chat on the list
    Then the page private message is displayed
    When "Ping" was entered
    Then The text was sent
    When someone read message
    Then The text message change color to blue
    When mouse hover in right side of message
    Then arrow down is visible
    When arrow down clicked
    Then delete message is displayed
    When delete message clicked
    Then whatsapp desktop only showing popup delete menu for me
    When Choose delete for me
    Then the message is gone
    
