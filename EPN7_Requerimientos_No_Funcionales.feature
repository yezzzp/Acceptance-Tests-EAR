Feature: Requisitos de Calidad y Rendimiento (EPN7)

  # US26 – Rendimiento
  Scenario: Validación de tiempos de respuesta del sistema
    DADO QUE el usuario accede a la plataforma NeuroTech
    CUANDO el sistema procesa la carga de la interfaz principal
    ENTONCES el tiempo de renderizado no debe exceder los "3" segundos
    Y los elementos interactivos deben estar disponibles inmediatamente

  # US27 – Seguridad
  Scenario: Encriptación de datos sensibles en tránsito
    DADO QUE el usuario envía información confidencial (contraseña o historial)
    CUANDO los datos son transmitidos al servidor
    ENTONCES el protocolo de comunicación debe ser HTTPS
    Y la información debe estar cifrada con algoritmos estándar (AES-256)

  # US30 – Compatibilidad Multiplataforma (Optimizado con Data Table)
  Scenario Outline: Acceso correcto desde distintos dispositivos y navegadores
    DADO QUE el usuario utiliza el dispositivo "<dispositivo>"
    Y accede mediante el navegador "<navegador>"
    CUANDO carga la aplicación web de NeuroTech
    ENTONCES la interfaz debe adaptarse correctamente (Diseño Responsivo)
    Y todas las funcionalidades críticas deben estar operativas

    # Data Table: Demuestra que la app funciona en todo entorno
    Examples:
      | dispositivo      | navegador         |
      | Laptop Windows   | Google Chrome     |
      | Macbook Pro      | Safari            |
      | iPhone 14        | Safari Mobile     |
      | Samsung Galaxy   | Chrome Mobile     |
      | Tablet iPad      | Safari            |

  # US28 – Disponibilidad
  Scenario: Garantía de Servicio (SLA)
    DADO QUE se realiza el monitoreo mensual del servidor
    CUANDO se calcula el tiempo total de actividad (Uptime)
    ENTONCES el porcentaje de disponibilidad debe ser superior al "99.0%"
    Y las ventanas de mantenimiento deben ser notificadas con 24h de anticipación
