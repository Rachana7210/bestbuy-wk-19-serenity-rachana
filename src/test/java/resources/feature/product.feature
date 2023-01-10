Feature: BestBuy Application
  As a user I want to test BestBuy Application

  Scenario: Check if the BestBuy application can be accessed by users
    When User sends a GET request to list endpoint
    Then User must get back a valid status code 200

  Scenario Outline: Create a new product & verify if the product is added
    When I create a new product by providing the information name "<name>", type "<type>", upc "<upc>", description "<description>", model "<model>", price  "<price>", shipping "<shipping>", manufacturer "<manufacturer>"
    Then I verify that the product  with "<price>" is created
    Examples:
      | name  | type  | upc  | description | model | price | shipping | manufacturer |
      | Krishna | Tesha | Peta | Good       | Best  | 100    | 25       | Toyota     |

  Scenario: Update an exciting product & verify that product  is updated
    When I update a product with product Id and give information ProductId "567432" name "Krishna", type "Tesha", upc "Peta", description "Good", model "Best", price  "100", shipping "25" , manufacturer "Toyota"
    Then I verify that the product with id productId "567432" is updated

  Scenario: Delete an exciting product & verify that product is deleted
    When I delete product with product Id
    Then I verify using  product id  that  data is deleted