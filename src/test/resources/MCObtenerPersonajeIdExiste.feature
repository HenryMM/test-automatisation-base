Feature:

  Scenario: Obtener personaje con ID 28 y verificar contenido
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/1220'
    When method GET
    Then status 200
    And match response == { "id": 1220, "name": "Henry Moreno", "alterego": "Tony Stark", "description": "Genius billionaire", "powers": [ "Armor", "Flight" ] }