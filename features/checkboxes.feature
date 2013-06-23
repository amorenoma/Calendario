Feature: Filter subjects
  As a user
  I want to be able to filter subjects

Background: Database initialized
Given the following Users exist
    | nombre| nick    | key   | rol   |
    | Pedro | Pheras  | 1234  | Profesor|
		| Rodri | Rcm     | 1234  | Alumno |

Given the following Events exist
    | fecha | asignatura    | tipo   | aula   | dificultad |
    | 30-Jun-2013 9:00:00 | ISI  | examen  | 323 | 3 |
    | 28-Jun-2013 9:00:00 | DAT  | examen  | 303 | 3 |

Given the following Meses exist
    | mes   | dias    | nmes |
    | Junio | 30      | 6 |

Given the following Comments exist
    | comentario   | evento    | usuario |
    | Vais a catear | 1      | Pheras |

Scenario: Users can filter subjects
	Given I am on the homepage
	Then I follow "Ver mes"
	And I should see "Junio"
  When I check the following subjects: ISI
  When I uncheck the following subjects: DAT
	When I press "Refresh"
  Then I am on the month page
  Then I should see "ISI"
  And I should not see "DAT"
	


