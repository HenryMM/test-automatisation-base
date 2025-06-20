Feature:

  Scenario: T-API-PQBP-636-CA4- Crear un personaje duplicado
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    And request { "name": "Nombre de prueba", "alterego": "Tony Stark", "description": "Genius billionaire", "powers": ["Armor", "Flight"] }
    When method POST
    Then status 400
    And match response == { "error": "Character name already exists" }