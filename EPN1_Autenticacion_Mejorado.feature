Feature: Gestión de Autenticación de Usuarios (EPN1)

  # US1 y US2 – Validación de Login
  Scenario Outline: Validar inicio de sesión con diferentes credenciales
    DADO QUE el usuario se encuentra en la pantalla de "Login"
    CUANDO ingresa el correo electrónico "<correo>"
    Y ingresa la contraseña "<password>"
    Y presiona el botón "Ingresar"
    ENTONCES el sistema debería mostrar el mensaje "<resultado_esperado>"
    Y el usuario es redirigido a la página "<pagina_destino>"

    # Data Table: Probamos éxito y fracaso en la misma estructura
    Examples:
      | correo                  | password      | resultado_esperado       | pagina_destino |
      | andrea@upc.edu.pe       | Andre123!     | Bienvenido Andrea        | /dashboard     |
      | ricardo@empresa.pe      | SecurePass1   | Bienvenido Ricardo       | /dashboard     |
      | andrea@upc.edu.pe       | clave_mal     | Credenciales incorrectas | /login         |
      | hacker@noexiste.com     | 123456        | Usuario no registrado    | /login         |
      |                         |               | Campos obligatorios      | /login         |

  # US5 – Registro de Psicólogo (Validación de campos)
  Scenario Outline: Validación de registro de profesionales
    DADO QUE el psicólogo está en el formulario de registro
    CUANDO ingresa el número de colegiatura "<colegiatura>"
    ENTONCES el sistema evalúa la validez con el resultado "<es_valido>"

    Examples:
      | colegiatura | es_valido |
      | 123456      | true      |
      | 123         | false     |
      | ABC-123     | false     |
