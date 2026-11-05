---
name: verificar-tfm
description: Evalúa si un borrador de TFM (estudio de caso en salud) cumple todas las cuestiones y listas de comprobación de los apuntes del máster, con trazabilidad requisito -> sección/pasaje -> estado, qué falta y dónde está la evidencia. Usar cuando el alumno pida evaluar o comprobar si su TFM "responde a todo", "cumple los requisitos de los apuntes" o "pasa el checklist". No usar para puntuar, predecir notas ni validar la corrección científica de los hechos.
---

# Evaluar el TFM contra los apuntes

Evalúa el cumplimiento de los requisitos: qué está cubierto, qué falta y dónde está la evidencia. Esta evaluación no da una nota ni sustituye la revisión del tutor.

## Antes de evaluar

1. Identifica el borrador a evaluar. Si el alumno no indica archivo o hay varios candidatos, pregúntale cuál; no elijas por tu cuenta.
2. Evalúa solo lo que está en el documento. Si el TFM es largo o está repartido en varios archivos, repásalo por secciones y marca como `no consta` cualquier parte que no hayas podido leer completa; nunca evalúes de memoria una parte sin revisar.
3. Si el alumno pide una valoración de método (diseño, medición, análisis), indica que esta skill solo comprueba cumplimiento y remite la duda al agente `tutor_metodologico` o a su tutor.

## Fuente de requisitos (obligatorio)

1. Usa `checklists/requisitos-tfm.md` de este proyecto: es una extracción de los apuntes ("Bases de datos y evidencia 26-27", Taller 5 horas) con la diapositiva de origen de cada requisito, pendiente de validación por el profesor. Si el alumno aporta apuntes más recientes o una lista oficial distinta, avísale de la diferencia y usa la fuente que él indique. Si la skill se instaló suelta y no existe `checklists/requisitos-tfm.md` en el proyecto, usa la copia incluida en `references/requisitos-tfm.md` de esta skill y avisa al alumno de que trabaja con esa copia (puede no estar al día; la fuente de verdad está en el repositorio).
2. Nunca inventes requisitos. Los elementos marcados RECOMENDACIÓN en la lista no se marcan como "falta": se anotan como sugerencia. Los marcados CONDICIONADA solo aplican si el caso cumple la condición (p. ej., STROBE-SIIS solo si se registran lesiones); si no aplica, estado `no aplicable` justificado.
3. Las guías de reporte (CARE, TIDieR, CERT, SCRIBE, STROBE-SIIS) entran por los apuntes, con el alcance que los apuntes les dan; no añadas ítems de esas guías que los apuntes no recogen.
4. Si un requisito es ambiguo, conserva su redacción y marca la ambigüedad; no lo reinterpretes.

## Aplicabilidad de las guías de reporte (antes de evaluar)

Antes de marcar la sección E de la lista, decide qué guías aplican al TFM concreto:

- Diseño: ¿caso descriptivo o caso único experimental (SCED)? SCRIBE solo si es SCED.
- Intervención: ¿incluye programa de ejercicio? CERT solo si lo incluye; TIDieR describe toda la intervención, también lo que no es ejercicio.
- Registro: ¿se registran lesiones o enfermedades de forma sistemática? STROBE-SIIS solo entonces, y en un caso único se limita a definición, fechas, gravedad y exposición.

Distingue siempre dos situaciones: una guía que NO aplica al caso (estado `no aplicable`, con justificación) y una guía que SÍ aplica pero no está reflejada en el borrador (estado `falta` o `no consta`). No exijas una guía que no corresponde al caso.

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
- Qué guías de reporte aplican a este TFM y por qué.
- Lista ordenada de huecos (`falta` y `parcial`) con sugerencia de dónde resolverlos.
- Recomendaciones de los apuntes no cubiertas, aparte y etiquetadas como recomendaciones.
- Lista de lo que no se pudo comprobar y por qué.

## Límites

- No valores si lo escrito es correcto, solo si responde al requisito.
- Cumplir una guía de reporte no demuestra calidad metodológica ni eficacia: no lo afirmes.
- No des una nota ni predigas la evaluación.
- No modifiques el TFM en esta revisión salvo que el alumno lo pida después, y entonces solo los cambios solicitados.

## Mantenimiento de esta skill

- Fuente: https://github.com/Ozcorta/master-ceu-codex (esta skill se crea y se actualiza en ese repositorio).
- Última actualización: 2026-11-05.
- Estado de verificación: probada de escritorio sobre el caso ficticio (`ejemplos/evaluacion-caso-ficticio.md`); instalación y ejecución real en Codex pendientes.
