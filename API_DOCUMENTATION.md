# API DOCUMENTATION: CRUD de Usuario en Automation Exercise API

**Base URL:** `https://automationexercise.com/api`  
**Content-Type:** `application/x-www-form-urlencoded`

---

## 1. Crear Usuario

| Método | URL              | Descripción                      |
| ------ | ---------------- | -------------------------------- |
| POST   | `/createAccount` | Crea una nueva cuenta de usuario |

### Request Body (x-www-form-urlencoded)

| Parámetro     | Valor de ejemplo | Descripción            |
| ------------- | ---------------- | ---------------------- |
| name          | Ellie Tamayo     | Nombre completo        |
| email         | ellie@test.com   | Email único            |
| password      | password_ellie10 | Contraseña             |
| title         | Miss             | Título                 |
| birth_date    | 24               | Día de nacimiento      |
| birth_month   | 10               | Mes de nacimiento      |
| birth_year    | 1999             | Año de nacimiento      |
| firstname     | Elizabeth        | Primer nombre          |
| lastname      | Tamayo           | Apellido               |
| company       | Sofka            | Compañía               |
| address1      | Quito            | Dirección principal    |
| address2      | Quito            | Dirección secundaria   |
| country       | Ecuador          | País (nombre completo) |
| zipcode       | 180625           | Código postal          |
| state         | Pichincha        | Estado/Provincia       |
| city          | Quito            | Ciudad                 |
| mobile_number | 0987654321       | Número de móvil        |

### Respuestas posibles

- **201 Created**
  - Usuario creado exitosamente.
  - Ejemplo:
    ```json
    {
      "responseCode": 201,
      "message": "User created!"
    }
    ```
- **400 Bad Request**
  - Faltan parámetros requeridos o formato incorrecto.
- **409 Conflict**
  - El email ya existe.
- **500 Internal Server Error**
  - Error inesperado del servidor.

---

## 2. Consultar Usuario

| Método | URL                     | Descripción                                |
| ------ | ----------------------- | ------------------------------------------ |
| GET    | `/getUserDetailByEmail` | Consulta los datos de un usuario por email |

### Parámetros de consulta (query string)

| Parámetro | Valor de ejemplo | Descripción       |
| --------- | ---------------- | ----------------- |
| email     | ellie@test.com   | Email del usuario |

Ejemplo de URL:

```
https://automationexercise.com/api/getUserDetailByEmail?email=ellie@test.com
```

### Respuestas posibles

- **200 OK**
  - Usuario encontrado.
  - Ejemplo:
    ```json
    {
      "responseCode": 200,
      "user": {
        "name": "Ellie Tamayo",
        ...
      }
    }
    ```
- **404 Not Found**
  - Usuario no encontrado.
- **400 Bad Request**
  - Falta el parámetro email.

---

## 3. Actualizar Usuario

| Método | URL              | Descripción                       |
| ------ | ---------------- | --------------------------------- |
| PUT    | `/updateAccount` | Actualiza los datos de un usuario |

### Request Body (x-www-form-urlencoded)

| Parámetro | Valor de ejemplo | Descripción                    |
| --------- | ---------------- | ------------------------------ |
| email     | ellie@test.com   | Email del usuario (original)   |
| password  | password_ellie10 | Contraseña (original)          |
| name      | Diana Tamayo     | Nuevo nombre (opcional)        |
| firstname | Diana            | Nuevo primer nombre (opcional) |
| address1  | Guayaquil        | Nueva direccion (opcional)     |

**Nota:** Debes enviar el email y password originales para identificar la cuenta. Los demás campos son los que deseas actualizar.

### Respuestas posibles

- **200 OK**
  - Usuario actualizado exitosamente.
  - Ejemplo:
    ```json
    {
      "responseCode": 200,
      "message": "User updated!"
    }
    ```
- **404 Not Found**
  - Usuario no encontrado.
- **400 Bad Request**
  - Faltan parámetros requeridos.

---

## 4. Eliminar Usuario

| Método | URL              | Descripción                    |
| ------ | ---------------- | ------------------------------ |
| DELETE | `/deleteAccount` | Elimina un usuario del sistema |

### Request Body (x-www-form-urlencoded)

| Parámetro | Valor de ejemplo | Descripción       |
| --------- | ---------------- | ----------------- |
| email     | ellie@test.com   | Email del usuario |
| password  | password_ellie10 | Contraseña        |

### Respuestas posibles

- **200 OK**
  - Usuario eliminado exitosamente.
  - Ejemplo:
    ```json
    {
      "responseCode": 200,
      "message": "Account deleted!"
    }
    ```
- **404 Not Found**
  - Usuario no encontrado.
- **400 Bad Request**
  - Faltan parámetros requeridos.

---
