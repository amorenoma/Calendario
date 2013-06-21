Feature: User can logout
  As a user
  I want to be  able to be logged out

Background: user Rodri registered
  Given I am on the home page
  When I follow "Registro"
  When I fill in "Nombre" with "Rodri"
  And I fill in "Email" with "Rodri@gmail.com"
  And I fill in "Rol" with "Alumno"
  And I fill in "Nick" with "Rcm"
  And I fill in "Key" with "1234"
  And I press "Registro"
  Then I should be on the index page


Scenario: user log in
  When I follow "Cerrar sesion"  
  Then I should not see "Rodri"

