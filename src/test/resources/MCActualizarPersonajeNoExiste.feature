@REQ_PQBP-636 @agente2
Feature:

  Scenario: T-API-PQBP-636-CA2- Actualizar personaje que no existe y verificar respuesta
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/9000'
    And request { "name": "Iron Man", "alterego": "Tony Stark", "description": "Updated description", "powers": ["Armor", "Flight"] }
    When method PUT
    Then status 404
    And match response == { "error": "Character not found" }