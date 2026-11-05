> Versión entregada del documento de Google «Ecosistema Codex para el TFM - proceso didáctico v2» (https://docs.google.com/document/d/1OOiHC0E0aPX_wt9t8n3FfoGm6P8Mvd-tQD06s72WwNU/edit), exportada el 5-nov-2026.

﻿ECOSISTEMA CODEX PARA EL TFM · PROCESO DIDÁCTICO · V2
Máster en Optimización del Entrenamiento y Readaptación Físico-Deportivas
Borrador v2 para revisar · 31 de octubre de 2026
Documento nuevo: no sustituye ni modifica el temario ni las prácticas ya preparadas. La versión 1 se conserva aparte.


QUÉ ES ESTE PROCESO
Un recorrido en el que cada alumno o pareja construye, pieza a pieza, su propio ecosistema de trabajo con Codex para el TFM: una carpeta de proyecto con sus reglas escritas y un conjunto pequeño de skills creadas, probadas y corregidas por él, una por fase del trabajo. No es un glosario ni una lista de plugins.


Dos cosas distintas que conviene no mezclar:
- El expediente didáctico del taller: la pregunta provisional, los artículos A/B y la matriz que cada pareja arrastra de práctica en práctica. Es un recurso de aprendizaje.
- El diseño científico del TFM: un caso único con una intervención (pregunta y PICO del caso, línea base, intervención documentada, medición del cambio, análisis y conclusión prudente, según el temario). Los artículos A/B son comparaciones agudas que sirven para practicar lectura y verificación; no son el modelo del TFM.


Principio rector: Codex ayuda a trabajar; no genera datos, resultados, citas ni decisiones. El análisis final sale de R ejecutado por la persona, y cada afirmación se verifica contra su fuente original.


TIEMPO Y ENCAJE CON LO YA PREPARADO
- El taller ya planificado dura 5 horas (unos 190 min de prácticas y 70 de explicación, con dos descansos, según el itinerario v2).
- Esta secuencia es una propuesta de AMPLIACIÓN posterior al taller: unas 5-6 horas repartidas en una preparación previa en casa y cinco sesiones. No cabe dentro de las 5 horas ya planificadas ni sustituye ningún bloque por defecto. Los tiempos son orientativos y la distribución la decide el docente: las sesiones 3 a 5 pueden convertirse en continuación autónoma con entrega, y la sesión 5 puede adelantarse al final del propio taller si sobra tiempo.
- Reutiliza las decisiones del taller: expediente único por pareja, corpus común A/B (Muyor et al. 2019 y Patterson et al. 2015, abiertos con atribución), matriz de lectura con pasaje y duda, y las reglas de ética y privacidad ya redactadas. Lo que el alumnado aprendió como prompts pasa aquí a ser skills persistentes.


LAS TRES PIEZAS DE CODEX QUE USA EL PROCESO
Verificado en la documentación oficial el 31 de octubre de 2026. Revalidar antes de clase: estas funciones cambian con frecuencia.


1. AGENTS.md, las reglas permanentes del proyecto. Codex lee archivos AGENTS.md antes de trabajar: uno global del usuario (~/.codex/AGENTS.md) y los del proyecto, de la carpeta raíz hacia abajo. Las reglas del TFM se escriben una sola vez y Codex las aplica en cada sesión. Límite orientativo de 32 KiB en total: reglas cortas y concretas.


2. Skills, los procedimientos reutilizables. Una skill es una carpeta con un archivo SKILL.md (nombre y descripción) más recursos opcionales. Se invoca de forma explícita escribiendo $nombre-skill o eligiéndola con /skills, y Codex también puede activarla si la tarea encaja con su descripción. Se crean con la skill incluida $skill-creator, que pregunta qué hace la skill, cuándo debe activarse y si lleva scripts. Se guardan en .agents/skills del proyecto (solo ese TFM) o en ~/.agents/skills (todos los proyectos del alumno). Se pueden desactivar sin borrarlas desde ~/.codex/config.toml. Si una skill nueva no aparece, reiniciar Codex.


3. Comprobación de carga y aplicación. El autorreporte no basta: que Codex diga qué instrucciones tiene no prueba que las aplique. Conviene dos comprobaciones: verificar la ubicación según la documentación (archivo AGENTS.md con nombre exacto, en la raíz del proyecto) y hacer una tarea ficticia con una regla concreta y cotejable (por ejemplo, pedir un dato que no consta en ningún documento: la respuesta esperada es "no consta"). Si la tarea falla, es señal de revisar ubicación y reiniciar Codex; el fallo por sí solo no identifica la causa.


Fuentes: https://developers.openai.com/codex/skills y https://developers.openai.com/codex/guides/agents-md


REGLAS FIJAS DEL ECOSISTEMA (PLANTILLA DE AGENTS.md)
Cada proyecto TFM arranca con estas reglas, redactadas por el propio alumno a partir de esta base:


- Trabaja en español, salvo que el fragmento a analizar esté en otro idioma.
- Ante una ausencia escribe "no consta". No completes huecos.
- Conserva discrepancias y contradicciones entre fuentes; no las resuelvas inventando.
- Todo dato que extraigas lleva su pasaje o sección localizable en la fuente.
- No generes resultados, datos, citas ni referencias. Las referencias se verifican una a una contra el original o el editor.
- El análisis estadístico y las figuras con datos reales se hacen en R, ejecutado por mí. Puedes ayudarme a preparar o revisar el código, pero los resultados que valen son los de esa ejecución.
- No abras ni introduzcas en Codex datos de sujetos, informes con identificadores ni manuscritos inéditos, ni como archivo local ni pegados en el chat: aunque Codex lea archivos de mi PC, el procesamiento no es local y ese contenido sale de mi equipo.
- Recuérdame declarar el uso de IA en el TFM según la normativa del máster.


COBERTURA: TODAS LAS PARTES DEL TFM
Partes del TFM según el temario (estructura de normativa, checklist unificado y cronograma enero-junio de 2027) y qué cubre este proceso:


EN LAS SESIONES (el ecosistema se construye y se prueba aquí):
- Pregunta y PICO del caso: sesión 1 (va en el AGENTS.md) y revisión en la 3.
- Búsqueda de fuentes y registro documentado: sesión 3.
- Lectura crítica y matriz de síntesis con verificación: sesión 2.
- Redacción clara (practicada con textos ficticios o ya publicados), referencias verificadas y declaración de uso de IA: sesión 5.
- Figura de seguimiento con datos ficticios, marcada como ficticia: sesión 4.


COMO CONTINUACIÓN (el ecosistema queda preparado; las skills se añaden cuando llegue la fase del cronograma, con el mismo ciclo crear-probar-verificar):
- Diseño y fases, línea base y definición de variables (operativa, instrumento, fiabilidad, momento de medición).
- Protocolo, ética, consentimiento y anonimato del participante.
- Intervención documentada y replicable (TIDieR/CERT): dosis, personalización, fidelidad y adherencia; registro de cada sesión.
- Recogida de datos y resultados con datos brutos por medición, incluidos los no favorables; eventos adversos; perspectiva del paciente.
- Análisis estadístico y figuras con datos reales en R, ejecutados por el alumno.
- Discusión, limitaciones, conclusiones que responden a los objetivos y líneas futuras.
- Preparación de la defensa: guion, PPT y ensayo. El temario contempla simular un tribunal; en este proceso la skill defensa-tfm prepara preguntas con una estructura genérica y datos ficticios, no con el manuscrito inédito (anonimizar no basta para autorizar a introducirlo).


Skills de continuación sugeridas (crear cuando toque): diseno-fases, protocolo-etica, registro-sesion, resultados-r, discusion-prudente, defensa-tfm. Este proceso no las trabaja en clase: se señalan para que el ecosistema crezca con el TFM, no para darlas por cubiertas.


SECUENCIA DE SESIONES (PROPUESTA ORIENTATIVA)
Cada sesión produce una pieza verificable del ecosistema. Si una herramienta falla, el expediente continúa con el plan B; nunca se simula una salida de IA.


SESIÓN 0 · ANTES DE CLASE (EN CASA, 30 MIN)
Objetivo: llegar con Codex funcionando y la carpeta del proyecto creada.
Tarea: instalar Codex (CLI o extensión del editor) y comprobar el acceso. Crear la carpeta del TFM con esta estructura: 01_pregunta, 02_fuentes, 03_matriz, 04_borradores, 05_figuras, 06_declaracion. La carpeta del proyecto no contiene datos de sujetos ni material inédito.
Control: abrir Codex dentro de la carpeta y comprobar que arranca y responde. La comprobación de las reglas llega en la sesión 1.
Pieza construida: estructura del proyecto.
Plan B: quien no tenga acceso trabaja en pareja con alguien que sí; las tareas de escritura se pueden hacer en papel y trasladar después.


SESIÓN 1 · LAS REGLAS DEL PROYECTO (AGENTS.md, 45-60 MIN)
Objetivo: escribir las reglas de trabajo una sola vez y comprobar que Codex las aplica.
Tarea: redactar AGENTS.md en la raíz del proyecto a partir de la plantilla anterior, adaptando el lenguaje a su TFM. Añadir la pregunta provisional, el tipo de estudio (caso único con fases) y las fases previstas.
Control: primero verificar la ubicación (archivo AGENTS.md, nombre exacto, raíz del proyecto); después, la tarea ficticia de cotejo: pedir a propósito un dato que no consta en ningún documento; la respuesta esperada es "no consta", no un dato inventado. Pedir a Codex que resuma las instrucciones cargadas sirve de orientación, no de prueba. Si la tarea falla, revisar ubicación y reiniciar Codex.
Pieza construida: AGENTS.md v1.
Plan B: sin Codex, el AGENTS.md sirve como plantilla de contexto que se pega al inicio de cualquier conversación con otro asistente.


SESIÓN 2 · LA PRIMERA SKILL: LA MATRIZ DE LECTURA (60-75 MIN)
Objetivo: aprender el ciclo crear-probar-corregir con un procedimiento que ya saben hacer con prompts.
Tarea: crear la skill matriz-articulo con $skill-creator (o a mano): extrae de UN artículo diseño, muestra según cada sección, comparación o carga, medida y unidad, resultado, límite y pasaje; escribe "no consta" si falta; conserva discrepancias; no infiere resultados no medidos (una activación muscular aguda no es una ganancia de fuerza). Probarla con el artículo A, cotejar tres campos contra el original, justificar una v2 y probarla con el artículo B. La prueba con B comprueba además si conserva la discrepancia muestral conocida (resumen 20; Subjects 15 hombres y 7 mujeres).
Control: registro con v1, salida sin corregir, cotejo de tres campos, v2 y motivo del cambio. Si no hay fallo, se justifica la verificación; no se fabrica un error.
Pieza construida: primera skill probada en dos artículos.
Plan B: sin $skill-creator, crear la carpeta y el SKILL.md a mano; sin Codex, usar el mismo texto como prompt, como en la práctica "skills como texto" del taller.


SESIÓN 3 · BÚSQUEDA DOCUMENTADA (45-60 MIN)
Objetivo: que la búsqueda quede registrada y sea repetible, no una conversación suelta.
Tarea: crear la skill busqueda-fuentes: a partir de la pregunta del TFM, devuelve consulta exacta usada, fecha, fuente consultada, recuento observado, y por cada candidato título, año, DOI o enlace, diseño y pertinencia. Declara que no es exhaustiva y no afirma ausencia de novedades si no pudo buscar. Probarla sobre la pregunta provisional y verificar dos registros contra los originales. Decidir si algún candidato entra como C/D en el expediente sin sustituir A/B.
Control: dos registros verificados contra el original; fecha y recuento anotados. Distinguir términos libres de términos controlados (MeSH) si se usa PubMed.
Pieza construida: skill de búsqueda + registro.
Plan B: si Codex no tiene acceso a la fuente, la skill organiza y documenta, pero la búsqueda se ejecuta en PubMed a mano y se pegan los resultados.


SESIÓN 4 · DEL TEXTO A LA FIGURA SIN MEZCLAR DATOS (45-60 MIN)
Objetivo: fijar la frontera entre lo que la IA puede tocar y lo que no.
Tarea: repasar las reglas de privacidad (en Codex no se abren ni se pegan datos de sujetos ni manuscritos inéditos; freemium no autoriza datos privados). Crear la skill figura-seguimiento: genera una figura de seguimiento por fases SOLO con datos ficticios marcados como ficticios, con unidad y aviso visibles; acepta cambios de etiqueta o color conservando datos, ejes y fases. Probarla con el conjunto ficticio del paquete de prácticas. Redactar dos frases prudentes sobre lo que la figura no demuestra (no causalidad, no significación, no cambio mínimo detectable).
Control: la figura muestra que los datos son ficticios; el alumno explica por qué el análisis real de su TFM saldrá de R y no de la conversación.
Pieza construida: skill de figura con límites + criterio de privacidad aplicado.
Plan B: notebook del paquete en Colab CPU, como en la práctica del taller.


SESIÓN 5 · REDACCIÓN, REFERENCIAS Y DECLARACIÓN (60 MIN)
Objetivo: cerrar el ecosistema con las fases de escritura y dejarlo auditado.
Tarea: crear dos skills más. redaccion-seccion: mejora la claridad de un texto conservando cifras, citas y significado, y marca cualquier cambio que altere el sentido; se practica SOLO con textos ficticios o ya publicados y no confidenciales (los borradores inéditos del TFM no se introducen en Codex, según la regla de privacidad). comprobar-referencias: separa una lista de referencias en confirmadas, con discrepancia y no localizadas; una referencia no localizada no es falsa, solo no encontrada. Verificar una salida de cada una contra el original. Redactar la declaración de uso de IA siguiendo la normativa y el modelo del temario (herramienta, modelo, fecha, para qué, en qué secciones, y revisión humana; nada de "se usó IA para mejorar el texto").
Control: referencia verificada contra el editor aunque la importación parecía correcta; párrafo de práctica reescrito con cifras y citas intactas.
Pieza construida: ecosistema completo y auditoría final: comprobar en disco que las carpetas de las skills están en .agents/skills del proyecto (el listado /skills orienta, pero la prueba es la carpeta y una ejecución de control con tarea ficticia), desactivar las que no se usan y redactar el párrafo de métodos que describe qué herramientas se usaron y cómo se verificó su salida.
Plan B: comprobación manual de referencias y declaración redactada sin ayuda.


CIERRE · DEMOSTRACIÓN (15-20 MIN)
Cada alumno o pareja enseña su ecosistema funcionando en dos minutos: abre su carpeta, ejecuta UNA skill ante el grupo con una tarea de práctica y enseña UNA verificación real que hizo contra una fuente. El objetivo no es presumir de automatización sino demostrar control.


PRODUCTO EVALUABLE
Entrega breve por alumno o pareja:
- AGENTS.md final y estructura de carpetas.
- Tres skills creadas (mínimo: matriz, búsqueda y una de la fase que más le sirva a su TFM), con el registro v1/v2 de al menos una.
- Una verificación documentada por fase: tres campos cotejados en la matriz, dos registros verificados en la búsqueda, una referencia cotejada con el editor.
- La figura ficticia con su aviso y las dos frases prudentes.
- El párrafo de métodos que describe el ecosistema y la declaración de uso de IA.
No se pide entregar todas las conversaciones ni un número fijo de skills.


RÚBRICA PROPUESTA SOBRE 10
Exactitud y verificación contra fuentes: 4. Trazabilidad (registros, "no consta", discrepancias conservadas): 3. Iteración justificada de las skills: 2. Claridad del AGENTS.md y del párrafo de métodos: 1. No se premia el número de skills ni la longitud de los prompts. Una skill que fabrica resultados, citas o datos descuenta aunque funcione técnicamente.


AVISOS PARA EL DOCENTE
- Revalidar las funciones de Codex antes de clase en la documentación oficial; cambian con frecuencia. Este documento se verificó el 31 de octubre de 2026.
- Codex puede ejecutar comandos en el PC del alumno. Enseñar a leer lo que propone antes de aceptarlo y a no lanzar Codex sobre carpetas con datos de sujetos o material inédito.
- Que Codex lea archivos locales no implica procesamiento local: abrir un archivo con Codex expone su contenido igual que subirlo. Datos de sujetos y manuscritos inéditos quedan fuera de Codex en todas las fases, también en redacción y defensa.
- Punto de partida de las skills, a elección del docente: que cada alumno las cree desde cero con $skill-creator (el aprendizaje está en el ciclo crear-probar-corregir), o que parta de skills ya instaladas (por ejemplo las del repositorio K-Dense que el docente instaló y evaluó) y las adapte con revisión. En ambos casos el control es el mismo: probar con A, verificar contra el original y justificar la versión final. Lo que no cambia es la verificación, no el origen de la skill.
- Las capacidades concretas (acceso a red, cuentas necesarias, límites) dependen del plan de cada alumno; comprobarlas en la sesión 0 y registrar qué funcionó y qué no, sin simular salidas.
