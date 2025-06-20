Feature:

  Scenario: Actualizar personaje con ID 48 y verificar respuesta
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/9000'
    And request { "name": "Iron Man", "alterego": "Tony Stark", "description": "Updated description", "powers": ["Armor", "Flight"] }
    When method PUT
    Then status 404
    And match response == { "error": "Character not found" }