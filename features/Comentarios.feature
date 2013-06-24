Feature: Teacher and student can add comments
  As a user
  I want to be able to add comments

Background: Database initialized
Given the following Users exist
    | nombre| nick    | key   | rol   |
    | Pedro | Pheras  | 1234  | Profesor|
		| Rodri | Rcm     | 1234  | Alumno |

Given the following Events exist
    | fecha | asignatura    | tipo   | aula   | dificultad |
    | 30-Jun-2013 9:00:00 | ISI  | examen  | 323 | 3 |

Given the following Meses exist
    | mes   | dias    | nmes |
    | Junio | 30      | 6 |

Given the following Comments exist
    | comentario   | evento    | usuario | fecha |
    | Vais a catear | 1      | Pheras | 30-Jun-2013 11:10:00 |

Scenario: Student can add comments
  Given I'm logged in as "Rcm", with key "1234"
  And I am on the show event page
	Then I press "Nuevo comentario"
	And I should be on the new comment page
  Then I fill in "Comentario" with "Examen muy complicado"
	And I press "Comentar"
	Then I should be on the show event page

Scenario: Teacher can delete comments
  Given I'm logged in as "Pheras", with key "1234"
  And I am on the index page
	Then I press "Administrar comentarios"
	Then I press "Borrar"
	Then I should see "El comentario ha sido borrado"




