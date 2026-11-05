---
name: verificar-tfm
description: Verifica si un borrador de TFM (estudio de caso en salud) responde a todas las cuestiones y listas de comprobación de los apuntes del máster, con trazabilidad requisito -> sección/pasaje -> estado. Usar cuando el alumno pida comprobar si su TFM "responde a todo", "cumple los requisitos de los apuntes" o "pasa el checklist". No usar para puntuar, predecir notas ni validar la corrección científica de los hechos.
---

# Verificar el TFM contra los apuntes

Comprueba la cobertura de requisitos, no la calidad. Esta revisión no da una nota ni sustituye la revisión del tutor.

## Fuente de requisitos (obligatorio)

1. Usa `checklists/requisitos-tfm.md` de este proyecto: es una extracción de los apuntes ("Bases de datos y evidencia 26-27", Taller 5 horas) con la diapositiva de origen de cada requisito, pendiente de validación por el profesor. Si el alumno aporta apuntes más recientes o una lista oficial distinta, avísale de la diferencia y usa la fuente que él indique.
2. Nunca inventes requisitos. Los elementos marcados RECOMENDACIÓN en la lista no se marcan como "falta": se anotan como sugerencia. Los marcados CONDICIONADA solo aplican si el caso cumple la condición (p. ej., STROBE-SIIS solo si se registran lesiones); si no aplica, estado `no aplicable` justificado.
3. Las guías de reporte (CARE, TIDieR, CERT, SCRIBE, STROBE-SIIS) entran por los apuntes, con el alcance que los apuntes les dan; no añadas ítems de esas guías que los apuntes no recogen.
4. Si un requisito es ambiguo, conserva su redacción y marca la ambigüedad; no lo reinterpretes.

## Procedimiento

1. Lee la lista de requisitos y el borrador del TFM completo.
2. Para cada requisito, busca la respuesta en el TFM y cita el pasaje real (cita breve, con sección).
3. Asigna un único estado por requisito:
   - `cubierto`: hay un pasaje que responde al requisito.
   - `parcial`: responde solo en parte; anota qué falta.
   - `falta`: no se encontró respuesta.
   - `no consta`: el TFM no permite comprobarlo (por ejemplo, falta un anexo).
   - `no aplicable`: requisito condicionado cuya condición no se da, con justificación.
4. No infieras cumplimiento: si no hay pasaje, el estado es `falta` o `no consta`, nunca una suposición.

## Salida

Una tabla con estas columnas:

| ID | Requisito (resumen fiel) | Fuente (diapositiva de los apuntes) | Sección del TFM | Pasaje (cita breve) | Estado | Observación |

Después de la tabla:
- Recuento por estado.
- Lista ordenada de huecos (`falta` y `parcial`) con sugerencia de dónde resolverlos.
- Recomendaciones de los apuntes no cubiertas, aparte y etiquetadas como recomendaciones.
- Lista de lo que no se pudo comprobar y por qué.

## Límites

- No valores si lo escrito es correcto, solo si responde al requisito.
- No des una nota ni predigas la evaluación.
- No modifiques el TFM en esta revisión salvo que el alumno lo pida después, y entonces solo los cambios solicitados.
