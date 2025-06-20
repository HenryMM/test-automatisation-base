Feature:

  Scenario: T-API-PQBP-636-CA3- Crear un personaje y verificar el status 201
    * def randomName = 'Nombre de prueba - ' + karate.uuid()
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    And request { "name": "#(randomName)", "alterego": "Tony Stark", "description": "Genius billionaire", "powers": ["Armor", "Flight"] }
    When method POST
    Then status 201