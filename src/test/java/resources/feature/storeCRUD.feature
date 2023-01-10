Feature:BestBuy Application
  As a user I want to test BestBuy Application

  Scenario Outline: CRUD Test
    Given Check if the BestBuy application can be accessed by users
    When I create a new Store by providing the information name "<name>", address "<address>", city "<city>", state "<state>", zip "<zip>", type  "<type>", address- "<address2>", lat "<lat>",lng "<lng>",hours "<hours>",services "<services>"
    Then I verify that the store  with lat "<lat>" is created
    And I update a store with storeId and give information storeId "85" name "Hency", address "Uxbridge", city "Colombo", state "New Jersy", zip "Henna", type  "cute", address- "Holloway", lat "67",lng "34",hours "13:40",services "Lime"
    Then I verify that the store with id storeId "39" is updated
    And I delete store with store Id
    Then I verify using  store id  that  data is deleted
    Examples:
      | name  | address | city        | state | zip    | type | address2 | lat | lng | hours | services |
      | Revti | Tesla   | Switzerland | Ita   | Malibu | Maru | Drive    | 145 | 200 | 12:35 | Free     |




