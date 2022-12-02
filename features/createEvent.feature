Feature: As an user of lider role of start Americas page
         I want to create an event
         so I can share and invite more participants


Scenario: Create an event with all fields
  Given I am on the StartApp login page
  And I fill in Email with "lider@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
  When I click the "Crear Evento" button especific
	And The "Crear evento" form shows
	And  I fill all the fields of the form
	|Nombre Evento:  | Evento para ayudar perritos       |
  |Descripcion: 	 | Recuaudar fondos y comprar vacunas|
  |Lider: 	       | Lider Lider                       |
  |Modalidad: 	   | Presencial   		                 |
  |Lugar:          | CBBA                              |	
  |Fecha: 	       | 28/12/2022                        |
  |Categoria: 	   | Educacion                         |
  |Proyecto:  		 | ProyectoPrueba                    |
	And I click the "Guardar Evento" button
  Then I see a text of "Evento para ayudar perritos"

Scenario: Create an event only with necessary information
  Given I am on the StartApp login page
  And I fill in Email with "lider@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
  When I click the "Crear Evento" button especific
	And The "Crear evento" form shows
	And  I fill all the fields of the form
	|Nombre Evento:  | Kermes en ayuda a Maria      |	
  |Fecha: 	       | 28/12/2022                        |
	And I click the "Guardar Evento" button
  Then I see a text of "Kermes en ayuda a Maria"

Scenario: Delete an event
  Given I am on the StartApp login page
  And I fill in Email with "lider@gmail.com"
  And I fill in Password with "123456"
  And I click the "Iniciar Sesión" button
  And I click the "Eventos" button
	When I click the "Eliminar" button of event "Kermes en ayuda a Maria" 
  And I click the "Confirmar" button
	Then The event of "Kermes en ayuda a Maria" does not exist