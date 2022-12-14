Feature: As a volunteer
         I want to see the events available 
         so I can be informed about the events where I could participate


Scenario: Watch all  the events availables
  Given I am on the StartApp login page
  When I fill in Email with "voluntario@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
  Then I see a text of "EVENTOS VIGENTES"
  Then I see a text of "Enseñanza del buen manejo de redes sociales"
  Then I see a text of "1 Bs hace la diferencia"
  Then I see a text of "Kermess para Maria"

@detailsEvent
Scenario: Watch details of an events
  Given I am on the StartApp login page
  When I fill in Email with "voluntario@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
  And I see a text of "EVENTOS VIGENTES"
  Then I click the Detalle button of Ayuda benefica
  And I see a text of "1 Bs hace la diferencia"

Scenario: Watch the past events
  Given I am on the StartApp login page
  When I fill in Email with "lider@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
	And I click the "Eventos Pasados" button
  Then I see a text of "EVENTOS PASADOS"

Scenario: Participate in an evento
  Given I am on the StartApp login page
  When I fill in Email with "voluntario@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
  When I click the "participar" button of event "Ayuda benefica" 
	Then The "DejarParticipar" button of event "Ayuda benefica" is show
  And The "participar" button of event "Ayuda benefica" is not show