Feature:

  Scenario: T-API-PQBP-636-CA9- Obtener personaje con ID 28 y verificar contenido
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/5000'
    When method GET
    Then status 404
    And match response == { "error": "Character not found" }