@REQ_PQBP-636 @agente10
Feature:

  @id:1 @marvel @obtener
  Scenario: T-API-PQBP-636-CA10 - Obtener personajes y verificar el status 200
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    When method GET
    Then status 200
    And print response