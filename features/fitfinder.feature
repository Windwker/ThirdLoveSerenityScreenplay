Feature: FitFinder Feature

  Scenario Outline: Complete fit finder quiz

    Given I am at the fit finder overture page

    When I click on lets get started button

    And I select the band size: "<bandSize>"

    And I select the cup size: "<cupSize>"

    And I select a brand: "<brand>"

    And I click on Next

    And I select a bra age: "<braAge>"

    And I click on Got It tip

    And I select the cup issue: "<cupIssue>"

    And I click on Ok tip band fit

    And I select a band issue: "<bandIssue>"

    And I click on Ok tip size band

    And I select a hook: "<hook>"

    And I select a strap issue: "<strapIssue>"

    And I select always wear same size

    And I select the breast shape: "<breastShape>"

    And I click on Ok tip breast shape

    And I select how tall I am: <tall>

    And I select an underwear size: "<underwearSize>"

    And I set an email address

    And I click on view my results

    Then I can see my fit finder results, Size: "<expectedSize>" and Cup Style: "<expectedStyle>"

    Examples:
      | bandSize | cupSize | brand  | braAge        | cupIssue               | bandIssue         | hook        | strapIssue | breastShape | tall        | underwearSize | expectedSize | expectedStyle |
      | 38       | B       | Natori | 6 - 12 months | Cups overflow a little | tight and digging | middle hook | fit right  | Bell        | 5'2" to 5'5" | MD            | 36B          | Plunge        |
