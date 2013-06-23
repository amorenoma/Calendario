Feature: Teacher can add events
  As a teacher
  I want to be able to add events

Background: Teacher Pedro registered
 Given the following Users exist
    | nombre| nick    | key   | rol   |
    | Pedro | Pheras  | 1234  | Profesor|
Given the following Events exist
    | fecha | asignatura    | tipo   | aula   | dificultad |
    | 30-Jun-2013 9:00:00 | ISI  | examen  | 323 | 3 |

Given the following Meses exist
    | mes   | dias    | nmes |
    | Junio | 30      | 6 |

Scenario: Teacher adds event
  Given I'm logged in as "Pheras", with key "1234"
  And I am on the home page
  When I follow "Administrar eventos"
  And I follow "Crear evento"
  Then I should be on the new event page
  When I fill in "Asignatura" with "SAT"
  And I select "Examen" from "Tipo"
  And I fill in "Aula" with "302"
  And I select "2" from "Dificultad"
  And I press "Crear"
  Then I should see "El evento ha sido creado con exito"