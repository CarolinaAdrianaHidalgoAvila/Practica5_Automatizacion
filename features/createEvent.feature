Feature: As an user of lider role of start Americas page
         I want to create an event
         so I can share and invite more participants


Scenario: Create an event only with necessary information     
  Given I am on the Start Americas Together login page
  When I enter "lider@gmail.com" for Email
  And I enter "123456" for Contraseña
  And I press the "Iniciar Sesión" button
  And I press the "Eventos" button
  Then I press the "Crear Evento" button especific
  And I enter "Evento para ayudar perritos" for Nombre del evento
  And I press the "Guardar Evento" button