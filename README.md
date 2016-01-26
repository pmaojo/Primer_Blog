
## Introducción

Bienvenido al primer proyecto del grupo [Ruby on Rails en español](https://www.facebook.com/groups/rubyonrailsespa/)

Para empezar solo recuerda:

Accedé al grupo en [slack](https://rubyonrailsespanol.slack.com/messages/general/), puedes solicitar una invitación [aquí](https://ror-es-invitation.herokuapp.com/).

## Instrucciones

Quienes no esten familiarizados con el uso de Git, pueden seguir las siguientes instrucciones para clonar el proyecto y poder contribuir al mismo

1. Asegúrate de tener tú entorno de desarrollo con todas las configuraciones requeridas.
2. Haz un fork del proyecto original y clona el proyecto desde tu terminal `git clone https://github.com/rubyespanol/Primer_Blog.git && cd Primer_Blog`
3. Una vez allí, crea un nuevo branch con el nombre de la característica en la que desees trabajar con ```git checkout -b mi-super-caracteristica```
4. Empieza a trabajar en los cambios que desees realizar, y cuándo estes listo añade los archivos y crea el commit `git add -A` `git commit -m "Creé una súper característica, espero les agrade"`
5. Sube los archivos a tu nuevo branch con `git push origin nombre-de-tu-branch`
6. Ahora puedes comparar los archivos y hacer un pull request a la rama dev ```dev``` del repositorio original.

Happy coding!

##Testing
El framework de testing utilizado es [RSpec](https://github.com/rspec/rspec-rails) y [Capybara](https://github.com/jnicklas/capybara) para los tests de aceptación.

1. Navega al directorio raíz del proyecto
1. Si es la primera vez que abres el proyecto crea la base de datos de testing y de desarrollo:
```
rake db:create
rake db:create RAILS_ENV=test
```
1. Y corre las migraciones:
```
rake db:migrate
rake db:migrate RAILS_ENV=test
```
1. Siempre que hagas un cambio en la base de datos asegúrate de que corriste las migraciones en la base de datos de testing.
1. Crea los tests de tu funcionalidad, luego crea la funcionalidad (TDD recomendado)
1. La estructura de folders de testing es la siguiente:
```
spec
|----features
	|----[modelo1]
		|----create_spec.rb
		|----destroy_spec.rb
		|----edit_spec.rb
		|----index_spec.rb
		|----[mi_accion_personalizada]_spec.rb
	|----[modelo2]
	|----[modelo3]
	|----[modeloN]
|----support #Helpers de los diferentes módelos (código reutilizable en todos los tests)
|----factories.rb #Fábricas de modelos para los tests
```
1. Correr todos los tests
```
rspec
```
1. Correr Un test suite en particular
```
rspec [ruta/suite/modeloN.rb]
```
1. Correr un Test case en particular
```
rspec [ruta/suite/modeloN.rb:Número de la lídea en donde está el test case]
Ejemplo:
rspec spec/features/posts/create_spec.rb:6
```
1. Una vez termines tu funcionalidad, asegúrate de que todoso los tests pasen en verde antes de hacer un PR.


## Gráfico de avance

[![Throughput Graph](https://graphs.waffle.io/rubyespanol/Primer_Blog/throughput.svg)](https://waffle.io/rubyespanol/Primer_Blog/metrics)


## Lista de Desarrolladores :

1. [Andrés](https://github.com/Oxyrus)
2. [Gerardo Barzola](https://github.com/gbarzola)
3. [Juan Roa](https://github.com/roadev)
4. [Matías Muñoz](https://github.com/Writkas)
5. [Mauricio Serna](https://github.com/FMauricioS)