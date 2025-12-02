Feature: Chatbot de Acompañamiento Emocional (EPN2)

  # US7 y US8 – Detección emocional y Recomendaciones
  # Usamos "Scenario Outline" para probar múltiples emociones con una sola estructura.
  Scenario Outline: El chatbot identifica la emoción y sugiere un ejercicio adecuado
    DADO QUE el usuario ha iniciado el chat con "NeuroBot"
    CUANDO el usuario envía el mensaje: "<mensaje_usuario>"
    ENTONCES el sistema debe analizar el texto mediante IA
    Y debe clasificar la emoción predominante como "<emocion_esperada>"
    Y el chatbot debe sugerir la actividad "<actividad_sugerida>"

    # Data Table: Cada fila cuenta como un test independiente (5 tests en total aquí)
    Examples:
      | mensaje_usuario                                      | emocion_esperada | actividad_sugerida       |
      | Me siento muy solo y sin ganas de hacer nada         | Tristeza         | Diario de gratitud       |
      | Tengo un examen mañana y siento que voy a fallar     | Ansiedad         | Respiración guiada 4-7-8 |
      | Mi jefe me gritó y estoy harto de todo               | Estrés           | Pausa activa de 3 min    |
      | Hoy fue un día tranquilo, me siento en paz           | Calma            | Meditación libre         |
      | Siento que no puedo respirar y me duele el pecho     | Pánico (Crisis)  | Contacto de Emergencia   |

  # US9 – Derivación profesional (Caso borde crítico)
  Scenario: Chatbot detecta riesgo alto y deriva a psicólogo
    DADO QUE el usuario muestra señales de crisis severa
    CUANDO el sistema detecta palabras clave de "riesgo alto"
    ENTONCES el chatbot debe responder con prioridad "Urgente"
    Y debe mostrar el botón "Contactar Psicólogo Ahora"
