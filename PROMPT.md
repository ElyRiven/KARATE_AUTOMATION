Necesito que implementes la automatización del CRUD completo de un usuario en la API pública accesible en la URL https://automationexercise.com/api usando el framework Karate.

Debes usar Java v17 y gradle v9.4.0 en el proyecto y debes agregar las dependencias y configuraciones necesarias en el archivo build.gradle. Si el archivo no existe, debes crearlo y configurarlo.

El objetivo final de la implementación de las pruebas automatizadas del CRUD completo en el endpoint especificado es la de simular el ciclo de vida completo del registro de un usuario (GET, POST, PUT y DELETE) en el sistema.

Al finalizar la implementación, debe ser posible ejecutar el comando `gradle clean test` para ejecutar las pruebas y generar el reporte correspondiente de los resultados de la ejecución.

Para la implementación, usa el documento API_DOCUMENTATION.md en el que está toda la información de los 4 endpoints, los datos que debes usar, el tipo de petición y contenido, los campos que recibe cada endpoint y sus posibles respuestas.

Implementa las pruebas automatizadas siguiendo la estructura de directorios recomendada por el propio framework Karate en su documentación oficial.

Sigue estos lineamientos para el flujo de pruebas y para generar el escenario del archivo .feature:

- Crear un usuario en el sistema (POST).
- Verificar que el usuario se creó en el sistema (GET).
- Actualizar los datos del usuario creado (PUT).
- Verificar que el usuario se actualizó con la nueva información (GET).
- Eliminar la cuenta de usuario del sistema (DELETE).
- Verificar que la cuenta de usuario se eliminó del sistema (GET).

Finalmente debes generar también un archivo README.md que contenga el contexto concreto y simple de la automatización de pruebas en la API y las instrucciones a seguir para replicar la ejecución de las pruebas y poder ver el reporte.
