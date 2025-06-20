Feature:

  Scenario: T-API-PQBP-636-CA5- Crear un personaje y verificar el status 201
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    And request { "name": "", "alterego": "", "description": "", "powers": [] }
    When method POST
    Then status 400
    And match response == { "name": "Name is required", "description": "Description is required", "powers": "Powers are required", "alterego": "Alterego is required" }