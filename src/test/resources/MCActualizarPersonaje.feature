@REQ_PQBP-636 @agente1
Feature: Actualizar personaje

  @id:1 @marvel @actualizar
  Scenario: T-API-PQBP-636-CA1- Actualizar personaje con ID 48 y verificar respuesta
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/48'
    And request { "name": "Iron Man", "alterego": "Tony Stark", "description": "Updated description", "powers": ["Armor", "Flight"] }
    When method PUT
    Then status 200
    And match response == { "id": 48, "name": "Iron Man", "alterego": "Tony Stark", "description": "Updated description", "powers": [ "Armor", "Flight" ] }