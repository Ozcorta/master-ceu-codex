> Versión entregada del documento de Google «Codex para el TFM - selección de agentes y skills por fases (propuesta)» (https://docs.google.com/document/d/1qi1BSYqIMVFJwwypjNYNtdjfAKY-XxDPCtDEmz-5lho/edit), exportada el 5-nov-2026.

﻿Codex para el TFM: agentes de trabajo y skills
Máster CEU · Propuesta docente para revisar · 3 de noviembre de 2026
La elección
Usaría un solo Codex con roles de trabajo, tres skills públicas y dos procedimientos docentes que se añadirían cuando correspondan. No instalaría un repositorio completo ni pondría a varios agentes autónomos a producir el TFM en paralelo.
El objetivo es que el alumno formule una pregunta, busque y compruebe fuentes, documente una intervención de caso único, prepare el análisis reproducible y revise su escritura. El alumno y su tutor conservan las decisiones científicas y éticas.
La plataforma elegida es Codex. Si se quiere un IDE, la combinación es VS Code + extensión Codex. La cuenta gratuita tiene límites: la licencia gratuita de una skill no amplía esa cuota ni paga sus servicios externos.
1. Qué significa cada pieza
* Rol o «agente»: una función que se pide a Codex: documentalista, revisor metodológico, auditor del protocolo, ayudante de código o editor. No es otro modelo ni una instalación distinta.
* Skill: un procedimiento reutilizable con instrucciones y, a veces, scripts y referencias. Puede orientar una tarea, pero no garantiza exactitud ni acceso a una base de datos.
* Repositorio: el lugar público del que se toma una skill concreta. Copiar toda una colección añade funciones, dependencias y riesgos que el alumnado no necesita.
Los roles pueden trabajar por turnos en el mismo proyecto. Un segundo pase de revisión en Codex puede ser útil, pero no equivale a una revisión independiente por otra persona.
2. El mínimo imprescindible
Sin instalación adicional: usar el creador de skills incluido en Codex, $skill-creator, para adaptar un procedimiento sencillo, preferiblemente solo de texto. Las reglas del proyecto van en AGENTS.md y las skills del proyecto en .agents/skills, según la documentación actual. No son el mismo archivo.
Repositorio científico principal: K-Dense-AI/scientific-agent-skills. La colección declara compatibilidad con Codex. Seleccionaría únicamente:
1. paper-lookup: buscar artículos y recuperar metadatos o texto abierto legal, registrando fuente y consulta.
2. scientific-critical-thinking: valorar diseño, medición, sesgos y alcance de una conclusión.
3. scientific-writing: organizar y revisar la escritura con trazabilidad y límites explícitos.
Las tres declaran licencia MIT. Debe conservarse la licencia y atribución correspondientes al distribuir una adaptación. Compatibilidad declarada y lectura del código no equivalen a funcionamiento probado: esta selección aún no se ha ensayado en VS Code con una cuenta gratuita del alumnado.
3. Qué utilizar en cada parte del TFM
A. Pregunta, objetivos y diseño del caso
Rol: revisor metodológico. Base: scientific-critical-thinking.
Ayuda a distinguir descripción, asociación y causalidad; a precisar pregunta, variables, unidad de análisis y momentos de medida. Para este máster debe adaptarse al seguimiento de una persona con fases y evolución. No convierte un caso con fases en un experimento por el mero hecho de dibujarlas.
Producto verificable: ficha de pregunta y objetivos, calendario de mediciones y lista de decisiones que debe confirmar el tutor. El estudiante justifica instrumento, unidad, fiabilidad y viabilidad. No aplicar GRADE ni una herramienta de riesgo de sesgo a cualquier diseño por defecto.
B. Búsqueda y antecedentes
Rol: documentalista. Base: paper-lookup.
Empezar con PubMed para la pregunta biomédica/de readaptación y ampliar cuando el tema lo requiera. El alumno conserva cadena exacta, fecha, fuente, filtros y recuento observado. Los términos MeSH se verifican en la fuente; no se aceptan porque Codex los proponga.
Producto: registro de búsqueda y candidatos con identificador, pertinencia y acceso real. Comprobar dos registros en el original. Ni una búsqueda vacía demuestra que no exista evidencia ni el resumen de un buscador sustituye el artículo completo.
No incluir de entrada: literature-review. Puede ser útil para un proyecto que realmente requiera una revisión estructurada, pero añade un flujo mayor y dependencias opcionales. Un TFM de intervención en un caso no se transforma en revisión sistemática por instalarla.
C. Lectura crítica y matriz de evidencia
Rol: lector crítico. Base: scientific-critical-thinking, adaptada con una matriz docente.
Extraer diseño, participantes, intervención/comparación, medidas, resultados, límites y pasaje localizable. Separar lo no informado de lo no realizado. Conservar contradicciones entre resumen y métodos. Una respuesta debe poder cotejarse en el artículo.
Producto: matriz de dos artículos públicos que se reutiliza en las prácticas. La comprobación mínima es contrastar tres campos contra el texto completo. No inferir adaptación crónica a partir de una respuesta aguda.
D. Protocolo, ética y protección del participante
Rol: auditor del protocolo. Base recomendada: procedimiento docente propio, todavía por crear; no buscaría un «agente ético» genérico.
Usar los requisitos vigentes del máster y de la institución para listar consentimiento, privacidad, riesgos, permisos y cuestiones pendientes. CARE ayuda a revisar el reporte de un caso, pero no concede aprobación ética. Ninguna skill puede afirmar que se obtuvo consentimiento, que un comité aprobó el estudio o que una actuación es segura sin evidencia.
Producto: lista de comprobación con estado: documentado, pendiente o no aplicable justificado; responsable y evidencia. La decisión corresponde a las personas y órganos competentes.
E. Intervención y seguimiento por fases
Rol: auditor de reproducibilidad. Base: segundo procedimiento docente propio, todavía por crear, apoyado en TIDieR/CERT y el temario.
Revisar materiales, quién aplica la intervención, frecuencia, duración, dosis, progresión, personalización, adherencia, modificaciones y eventos adversos. No prescribir automáticamente un programa individual ni rellenar sesiones que no se realizaron.
Producto: plantilla de intervención y registro de sesión. CARE orienta el reporte del caso; TIDieR/CERT detallan la intervención. SCRIBE se valora si se adopta un diseño de investigación de caso único apropiado, no por tener solo un participante.
F. Preparación del código, resultados y figuras
Rol: ayudante de código y revisor. Base: Codex y revisión metodológica docente; añadir opcionalmente critical-code-reviewer de Posit.
Codex puede preparar o revisar un script usando datos ficticios y un diccionario sin información privada. El plan depende de la pregunta y el diseño, no de una batería de pruebas estadísticas sugerida por una skill. El alumno ejecuta el análisis final en R en su equipo y comprueba los resultados.
Producto: script reproducible, comprobaciones de datos y figura por fases con unidades. En el taller, todo conjunto y figura se marca «ficticio». No inventar significación, causalidad ni cambio mínimo detectable sin la información necesaria.
La skill de Posit revisa código general, no valida por sí sola el diseño estadístico de un caso único. Las skills r-lib están dirigidas principalmente al desarrollo de paquetes R: no son un curso de análisis de un TFM.
G. Escritura, discusión, referencias y declaración de IA
Rol: editor científico y comprobador de evidencias. Base: scientific-writing; paper-lookup para localizar una referencia.
Ordenar la argumentación, detectar afirmaciones sin respaldo, distinguir resultado e interpretación y conservar cifras, unidades, citas e incertidumbre. La discusión responde a los objetivos y reconoce los límites del caso. En Codex se practica únicamente con material público o ficticio, no con el manuscrito inédito del alumno.
Producto: esquema de secciones, matriz afirmación-fuente y registro del uso real de IA. Confirmar autoría, título, año y DOI en el editor o registro original. Una referencia con DOI válido no prueba que respalde la frase citada.
Opcional: citation-management para BibTeX y bibliografía más extensa. No sustituye Zotero ni exige conectarle la biblioteca personal. Para un puñado de referencias, la verificación manual puede ser más simple.
H. Revisión final y defensa
Rol: revisor final y tribunal simulado. Base: scientific-writing y los criterios públicos del máster; no hace falta otra instalación.
Producto: lista de coherencia pregunta-métodos-resultados-conclusión y preguntas de ensayo con un caso ficticio. No predecir la nota ni presentar una simulación como aval del tribunal. peer-review de K-Dense queda como ampliación, no requisito del taller.
4. Opcionales: cuándo compensan
* citation-management · K-Dense · MIT. Para extraer/verificar metadatos y BibTeX. Requiere Python y requests para sus scripts, red y, para Google Scholar, otra dependencia. Evitar automatizar Scholar como ruta básica; usar PubMed/Crossref y cotejo humano.
* critical-code-reviewer · Posit · MIT. Revisión de código y fallos de lógica. Limitarlo a informar, sin publicar comentarios o cambios automáticamente.
* quarto-authoring · Posit · MIT. Solo si se decide escribir un informe reproducible en Quarto. Requiere Quarto y el motor R correspondiente para renderizar; no añadirlo si se trabaja en Word.
posit-dev/skills declara compatibilidad con Codex. K-Dense y Posit muestran actividad reciente en sus repositorios al comprobarlos; esto no es una auditoría de seguridad ni garantía de mantenimiento futuro. Antes de clase conviene fijar una revisión concreta y no actualizar durante el taller.
5. Acceso, dependencias y seguridad
paper-lookup: documentación con red y curl; scripts con Python 3.11 o posterior. Declara que no necesita credenciales para el uso básico, con claves opcionales para límites o acceso adicional según proveedor. No implica texto completo gratuito de todo artículo.
scientific-critical-thinking: la guía analítica no requiere otra API; su rama opcional de imágenes sí usa OpenRouter. scientific-writing: guía sin API adicional y scripts opcionales locales con Python 3.11 o posterior. En ambos casos, el procesamiento de Codex sigue siendo remoto: «script local» no vuelve privada la conversación.
Fuera del paquete básico: imágenes generadas, servicios de búsqueda de pago, conectores privados y claves API. No se necesita que cada alumno contrate otro servicio. Si una rama los solicita, se omite o se revisa su necesidad antes de activarla.
Leer SKILL.md, scripts y enlaces antes de instalar. Una skill es contenido de terceros y puede pedir ejecución de comandos, acceso a red o archivos. No aprobar comandos a ciegas, no usar permisos irrestrictos y no exponer carpetas con datos personales, secretos o trabajos inéditos. Descargar y copiar una selección revisada al proyecto reduce alcance; no elimina el riesgo.
No recomiendo instalar openai/skills como catálogo inicial: su README actual lo declara obsoleto y remite al sistema de plugins actual. El creador incluido y la documentación vigente de Codex bastan para esta práctica.
6. Encaje docente y prueba antes de clase
El v2 de trabajo proponía una ampliación de 5-6 horas además del taller. No daría por aprobadas todas esas sesiones. Dentro de las cinco horas, la práctica de skills de 20 minutos puede enseñar un único ciclo:
1. Elegir un artículo público y una tarea pequeña de extracción.
2. Adaptar una skill con tres campos y la regla «si falta, escribe no consta».
3. Ejecutarla, cotejar un campo y registrar un cambio justificado.
4. Repetir con una variación y comprobar que no inventa.
El resto se incorpora progresivamente. Antes de fijar la actividad: probar instalación, descubrimiento de la skill, cuenta Free, lectura del artículo, acceso a una fuente y cuota. Registrar lo que funcionó. Si falla red o cuota, hacer el mismo cotejo manual con la plantilla, sin simular una salida.
Estado: repositorios, documentación y licencias de las skills propuestas revisados. Sin instalación ni ejecución de sus scripts; sin prueba de extremo a extremo en un equipo de alumno; sin cambios en presentaciones, prácticas o borradores existentes. Recomendación para decidir con Eduardo, no paquete ya validado para distribuir.
Fuentes y materiales de referencia
Documentación consultada el 3 de noviembre de 2026. Los enlaces de cada skill aparecen junto a su recomendación.
* Codex: skills, creador y ubicaciones.
* Codex: instrucciones del proyecto con AGENTS.md.
* Codex con planes ChatGPT: acceso y límites.
* CARE: guía de reporte de casos.
* EQUATOR: TIDieR.
* EQUATOR: reporte de ejercicio y referencia a CERT.
* EQUATOR: SCRIBE.
Base docente leída: «Ecosistema Codex para el TFM · proceso didáctico v2» y presentación «Bases de datos y evidencia 26-27 · Taller 5 horas con prácticas», de la carpeta de trabajo del máster. Se conservan intactos.
