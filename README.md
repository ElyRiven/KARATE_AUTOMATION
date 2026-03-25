# Karate Automation - CRUD de Usuario en AutomationExercise API

Automatización de pruebas del ciclo de vida completo de un usuario en la API pública de [AutomationExercise](https://automationexercise.com/api), implementada con el framework [Karate DSL](https://github.com/karatelabs/karate).

## Tecnologías

- **Java 17**
- **Gradle 9.4.0**
- **Karate DSL 1.4.1**

## Estructura del proyecto

```
app/
└── src/
    └── test/
        ├── java/
        │   └── karate_automation/
        │       └── AppTest.java          # Runner JUnit 5 de Karate
        └── resources/
            ├── karate-config.js          # Configuración global (baseUrl)
            └── karate_automation/
                └── UserCrudTest.feature  # Escenarios del CRUD completo
```

## Flujo de pruebas

El escenario automatizado simula el ciclo de vida completo de un usuario:

1. **POST** `/createAccount` — Crear un nuevo usuario.
2. **GET** `/getUserDetailByEmail` — Verificar que el usuario fue creado correctamente.
3. **PUT** `/updateAccount` — Actualizar datos del usuario.
4. **GET** `/getUserDetailByEmail` — Verificar que los datos del usuario fueron actualizados.
5. **DELETE** `/deleteAccount` — Eliminar la cuenta de usuario.
6. **GET** `/getUserDetailByEmail` — Verificar que la cuenta fue eliminada (`responseCode: 404`).

## Requisitos previos

- **Java 17** instalado y disponible en el `PATH`.
- **Conexión a internet** para alcanzar la API de AutomationExercise y para que Gradle descargue las dependencias en la primera ejecución.

> El wrapper de Gradle (`gradlew`) se encarga de descargar la versión correcta de Gradle automáticamente. No es necesario tenerlo instalado manualmente.

## Ejecución de las pruebas

Desde la raíz del proyecto, ejecutar:

```bash
gradle clean test
```

O

```bash
./gradlew clean test
```

## Reporte de resultados

Karate genera un reporte HTML detallado con los resultados de cada paso. Una vez finalizada la ejecución, el reporte se encuentra en:

```
app/build/karate-reports/karate-summary.html
```

Abrir ese archivo en el navegador para visualizar el resumen completo de la ejecución, incluyendo el estado de cada paso del escenario, los request/response de cada llamada HTTP y las validaciones realizadas.

Adicionalmente, Gradle genera su propio reporte de pruebas en:

```
app/build/reports/tests/test/index.html
```
