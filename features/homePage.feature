Feature: As a volunteer
         I want to see the Start Americas Together homepage 
         so I can be informed about the events and projects


Scenario: Watch the Start Americas Together Home Page        
  Given I am on the Start Americas Together login page
  When I enter "voluntario@gmail.com" for Email
  And I enter "123456" for Contraseña
  And I press the "Iniciar Sesión" button
  Then I see a option for the "Inicio"
  And I see a option for the "Proyectos"
  And I see a option for the "Eventos"
  And I see a option for the "Cuenta"

Scenario: Watch the Events that I am signed up        
  Given I am on the Start Americas Together login page
  When I enter "voluntario@gmail.com" for Email
  And I enter "123456" for Contraseña
  And I press the "Iniciar Sesión" button
  Then I see a text of "Tus Próximos Eventos"
  And I see a text of "Ayuda benefica"
  And I see a text of "Feria musical"