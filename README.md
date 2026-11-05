# Codex para el TFM - Master CEU (Bases de datos y evidencia)

Herramientas docentes de Codex para el TFM basado en un estudio de caso en salud.
Para la aplicación de escritorio de ChatGPT (que incluye Codex), con cuenta gratuita de ChatGPT.

Contenido de esta primera versión: el verificador del TFM contra los apuntes y un caso ficticio para practicar. Sin apuntes completos ni TFM del alumnado.

## Qué incluye

- `AGENTS.md`: reglas del proyecto que Codex lee al trabajar en esta carpeta.
- `.agents/skills/verificar-tfm`: comprueba si el borrador del TFM responde a las cuestiones y checklists de los apuntes, con trazabilidad requisito -> sección/pasaje -> estado. No puntúa ni valida hechos.
- `.codex/agents/revisor-tfm.toml`: agente revisor de solo lectura que aplica la skill y devuelve hallazgos. No edita.
- `checklists/requisitos-tfm.md`: extracción de los requisitos de los apuntes con su diapositiva de origen. PENDIENTE DE VALIDACIÓN POR EL PROFESOR: no es la rúbrica oficial.
- `ejemplos/caso-ficticio.md`: caso y fragmento de TFM inventados, con huecos deliberados, para practicar sin datos reales.

## Requisitos

1. Aplicación de escritorio de ChatGPT (incluye Codex): https://chatgpt.com/download
2. Cuenta de ChatGPT (la gratuita sirve, con límites de uso).

## Instalación y uso

1. Descarga o clona este repositorio.
2. Abre Codex en la carpeta del repositorio: las reglas de `AGENTS.md`, la skill y el agente se cargan solos.
3. Escribe `$` para comprobar que aparece `verificar-tfm`. Si no aparece, reinicia Codex.
4. Prueba con el ejemplo: "usa $verificar-tfm con el fragmento de ejemplos/caso-ficticio.md".
5. Para tu borrador, trabaja siempre sobre una copia y revisa la tabla resultante: indica qué está cubierto, qué falta y qué no se pudo comprobar. No es una nota ni sustituye al tutor.

## Avisos

- No introduzcas datos identificables, documentación clínica privada ni manuscritos inéditos.
- Codex procesa la conversación en servidores de OpenAI.
- La lista de requisitos se actualizará cuando el profesor valide la extracción o cambien los apuntes.
