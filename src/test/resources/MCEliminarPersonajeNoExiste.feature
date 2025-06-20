Feature:

  Scenario: T-API-PQBP-636-CA7- Eliminar personaje con ID 1 y verificar status 204
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/8888'
    When method DELETE
    Then status 404