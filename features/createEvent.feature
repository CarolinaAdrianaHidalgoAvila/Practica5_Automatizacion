Feature: As an user of lider role of start Americas page
         I want to create an event
         so I can share and invite more participants


Scenario: Create an event only with necessary information
  Given I am on the StartApp login page
  When I fill in Email with "lider@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
  Then I click the "Crear Evento" button especific
  And I click "Evento para ayudar perritos" for Nombre del evento
  And I click the "Guardar Evento" button