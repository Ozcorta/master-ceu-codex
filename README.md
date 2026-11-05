# Codex para el TFM - Master CEU (Bases de datos y evidencia)

Herramientas docentes de Codex para el TFM basado en un estudio de caso en salud.
Para la aplicación de escritorio de ChatGPT (que incluye Codex), con cuenta gratuita de ChatGPT.

Contenido de esta primera versión: el evaluador del TFM contra los apuntes y un caso ficticio para practicar. Sin apuntes completos ni TFM del alumnado.

## Qué incluye

- `AGENTS.md`: reglas del proyecto que Codex lee al trabajar en esta carpeta.
- `.agents/skills/verificar-tfm`: evalúa si el borrador del TFM cumple las cuestiones y checklists de los apuntes, con trazabilidad requisito -> sección/pasaje -> estado, qué falta y dónde está la evidencia. Aplica las guías de reporte (CARE, TIDieR, CERT, STROBE-SIIS, SCRIBE) solo cuando corresponden al caso. No puntúa ni valida hechos.
- `.codex/agents/revisor-tfm.toml`: agente revisor de solo lectura que aplica la skill y devuelve hallazgos. No edita.
- `.codex/agents/tutor-metodologico.toml`: agente tutor de solo orientación para dudas de método (diseño, medición, análisis, redacción). Guía con preguntas y criterios; no redacta el TFM.
- `.agents/skills/analizar-datos-tfm`: analiza datos autorizados del caso y genera figuras reproducibles en R. Aplica una puerta de privacidad ANTES de subir datos (seudonimizar no basta), verifica variables y unidades, acuerda el método antes de cualquier inferencia y deja figura, script y datos trazados. Si los datos no pueden compartirse, prepara el script sin abrirlos y el alumno lo ejecuta en su R.
- `.agents/skills/interpretar-cambio-individual`: guía para decidir si un cambio en el seguimiento de una persona supera el error de medida (con umbral aportado y aplicable) o se describe sin estimación del error (sin umbral). Distingue "detectable" de "importante" y no trata ningún umbral como prueba de eficacia.
- `ejemplos/datos-ficticios-caso.csv` y `ejemplos/analisis-figuras-datos-ficticios.R`: mediciones semanales inventadas del caso ficticio y script de referencia que las analiza y exporta dos figuras (estado: preparado, pendiente de ejecutar en R).
- `ejemplos/colab-analisis-figuras-datos-ficticios.ipynb`: cuaderno guiado para Google Colab (Python) con el mismo flujo, probado con los datos ficticios. No instala nada: funciona en el navegador.
- `docs/flujo-datos-y-figuras.md`: el flujo completo (privacidad, puerta de datos, cambios descriptivos, umbral, trazabilidad) escrito de forma independiente de la herramienta, para trasladarlo a Codex, Colab u otra IA.
- `checklists/requisitos-tfm.md`: extracción de los requisitos de los apuntes (bloque "Qué desarrollar en el TFM", diap. 116-138, versión de 139 diapositivas) con su diapositiva de origen. PENDIENTE DE VALIDACIÓN POR EL PROFESOR: no es la rúbrica oficial.
- `ejemplos/caso-ficticio.md`: caso y fragmento de TFM inventados, con huecos deliberados, para practicar sin datos reales.
- `ejemplos/evaluacion-caso-ficticio.md`: ejemplo de salida de la skill sobre el caso ficticio, con la tabla de trazabilidad completa; sirve de referencia del formato esperado.

## Requisitos

1. Aplicación de escritorio de ChatGPT (incluye Codex): https://chatgpt.com/download
2. Cuenta de ChatGPT (la gratuita sirve, con límites de uso).

## Instalación y uso

1. Descarga o clona este repositorio.
2. Abre Codex en la carpeta del repositorio: las reglas de `AGENTS.md`, la skill y el agente se cargan solos.
3. Escribe `$` para comprobar que aparece `verificar-tfm`. Si no aparece, reinicia Codex.
4. Prueba con el ejemplo: "usa $verificar-tfm con el fragmento de ejemplos/caso-ficticio.md" y compara con `ejemplos/evaluacion-caso-ficticio.md`. Para dudas de método, delega en el agente `tutor_metodologico`.
5. Para datos y figuras: "usa $analizar-datos-tfm con ejemplos/datos-ficticios-caso.csv" y, si el seguimiento lleva umbral, "$interpretar-cambio-individual" decide la banda antes de graficar.
6. Si prefieres no instalar nada, sube `ejemplos/colab-analisis-figuras-datos-ficticios.ipynb` a Google Colab y síguelo con los datos ficticios. El flujo es el mismo; en Colab el código es Python.
5. Para tu borrador, trabaja siempre sobre una copia y revisa la tabla resultante: indica qué está cubierto, qué falta y qué no se pudo comprobar. No es una nota ni sustituye al tutor.

## Avisos

- No introduzcas datos identificables, documentación clínica privada ni manuscritos inéditos. En un estudio de caso, la combinación de deporte, club, lesión, edad o fechas puede identificar a la persona aunque quites el nombre.
- Codex procesa la conversación y los archivos del proyecto en servidores de OpenAI. La comprobación de privacidad se hace ANTES de subir los datos, no después.
- La lista de requisitos se actualizará cuando el profesor valide la extracción o cambien los apuntes.
