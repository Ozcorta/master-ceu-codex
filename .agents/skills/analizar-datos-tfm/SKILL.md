---
name: analizar-datos-tfm
description: Analiza datos autorizados del caso (no sensibles) y genera figuras reproducibles en R para el TFM. Comprueba primero que los datos pueden compartirse, verifica variables y unidades, acuerda el método antes de cualquier inferencia y deja figura, script y datos trazados. Usar cuando el alumno pida analizar sus datos, hacer gráficos o figuras a partir de una tabla o CSV, o preparar figuras de resultados. No usar con datos que puedan identificar a la persona estudiada ni para decidir el método estadístico sin que el alumno lo confirme.
---

# Analizar datos del caso y generar figuras

Ayuda al alumno a pasar de una tabla de datos a un análisis básico y figuras reproducibles para su TFM. El método lo decide el alumno; los números y las figuras salen de R ejecutado en su equipo, no de esta conversación.

## Puerta de privacidad (antes de que el alumno suba nada)

Esta comprobación es responsabilidad del alumno y se hace ANTES de copiar datos a la carpeta del proyecto: Codex procesa los archivos en servidores de OpenAI, aunque el código se ejecute en el PC. Ninguna comprobación posterior puede retirar un dato ya subido.

1. Recuérdale que no puede subir datos que identifiquen o hagan reconocible a la persona estudiada.
2. Quitar el nombre o poner "sujeto 1" NO basta: en un estudio de caso, la combinación de deporte, club, lesión, edad, fechas o puesto puede delatar a la persona. Si cualquier combinación de columnas permite reconocerla, esos campos no se suben.
3. Si los datos no pueden compartirse, NO los abras aunque ya estén en la carpeta: avisa al alumno y trabaja en modo script (abajo).
4. Con datos ficticios, anonimizados de verdad o agregados, trabaja con normalidad.

### Modo script (datos que no pueden compartirse)

1. Pide al alumno solo la ESTRUCTURA: nombres de columnas, qué mide cada una, unidades y número de filas. Nunca los valores.
2. Escribe el script R completo contra esa estructura, usando si hace falta un pequeño conjunto de datos ficticios con el mismo formato para comprobar la lógica.
3. El alumno ejecuta el script en su R, sobre sus datos reales, sin que los datos salgan de su equipo.
4. Marca el resultado como "preparado, no ejecutado" hasta que el alumno confirme que corrió y pegue la salida o la figura.

## Puerta de datos (antes de graficar o analizar)

1. Identifica el archivo. Si hay varios candidatos, pregunta cuál; no elijas por tu cuenta.
2. Lee la estructura y confírmala con el alumno: qué mide cada columna, unidades, número de registros, si hay medidas repetidas o varias personas y cómo se identifican. No inventes variables ni unidades; si una unidad no consta, márcala como pendiente.
3. Comprueba rangos plausibles y valores faltantes, y comenta lo que encuentres. No rellenes ni elimines datos por tu cuenta: cualquier exclusión se propone y se registra con su motivo.

## Elección del gráfico

1. Propón el tipo de gráfico según la pregunta y el diseño, y justifícalo en una línea: evolución temporal (líneas por medición), comparación entre condiciones o extremidades (puntos/barras con valores individuales), relación entre variables (dispersión).
2. Con pocos registros o un solo caso, muestra SIEMPRE los valores individuales; una media sola esconde la variabilidad y en un caso único no procede.
3. Respeta la escala y la dirección de cada variable (p. ej., en dolor, menos es mejor); no truncar ejes sin avisarlo.

## Método antes de inferencia

Si el alumno pide contrastes, modelos, líneas ajustadas o intervalos (no un gráfico descriptivo):

1. Propón un método candidato acorde al diseño (qué estima, en qué escala y por qué encaja) y sus supuestos con cómo comprobarlos.
2. Ofrece dos o tres alternativas pertinentes con qué gana y pierde cada una.
3. Espera la decisión del alumno antes de escribir ese código. No elijas por tablas simplistas ("dos grupos = t-test"): en un estudio de caso con medidas repetidas rara vez aplican los contrastes habituales de grupos independientes.
4. Registra la decisión y sus motivos en la entrega. Si la figura es de seguimiento individual con umbral de cambio (banda de error, MDC, MIC...), la elección e interpretación del umbral siguen la skill `interpretar-cambio-individual`; esta skill ejecuta el cálculo y grafica, no decide el umbral. Para dudas de método abiertas, remite al agente `tutor_metodologico`.

## Script y figuras

1. Un script R por análisis, con rutas relativas y semilla si hay azar. No instales paquetes nuevos sin listarlos y pedir permiso; prioriza ggplot2 por ser el estándar docente.
2. Ejecuta con Rscript si R está disponible en el equipo. Si no lo está, entrega el script marcado "preparado, no ejecutado" y qué falta para correrlo; no afirmes resultados sin ejecución.
3. Exporta cada figura en PNG (300 ppp) y PDF o SVG, al ancho final de publicación (columna ~85 mm, página ~174 mm), y REVISA la figura renderizada antes de entregarla: legibilidad a tamaño real, etiquetas con unidades, colores distinguibles también en escala de grises y para daltonismo.
4. Criterios de composición: estilo consistente entre figuras (misma tipografía, paleta y tamaño base); en figuras multipanel, leyenda común y paneles etiquetados (A, B, C); codifica lo importante con más que color (forma, línea o etiqueta directa).
5. Toda cifra que aparezca en texto o figura debe poder señalarse en la salida de R y en la línea del script que la produce. Una cifra sin esa cadena no entra en el TFM.

## Cierre de cada tarea

Al terminar indica: qué archivo de datos se usó y su comprobación de privacidad, qué estructura se confirmó, qué método se acordó (si hubo inferencia), qué figuras y scripts se generaron y dónde quedaron, qué se ejecutó de verdad y qué queda pendiente. Figura, script y datos quedan juntos en la carpeta de resultados del proyecto.

## Relación con otras piezas

- `interpretar-cambio-individual`: decide si el seguimiento lleva banda de umbral y cómo se interpreta; esta skill genera la figura resultante.
- `tutor_metodologico`: dudas de método abiertas.
- `verificar-tfm`: comprueba después el cumplimiento de los apuntes.

## Ejemplo incluido

- `ejemplos/datos-ficticios-caso.csv`: mediciones semanales inventadas del caso ficticio de readaptación (fuerza isométrica de extensores en ambas extremidades, salto CMJ y RPE). Sirve para practicar todo el flujo sin datos reales.
- `ejemplos/analisis-figuras-datos-ficticios.R`: script de referencia que lee ese CSV, comprueba la estructura, calcula el índice de simetría entre extremidades y exporta dos figuras. Estado: preparado, pendiente de ejecutar en R.
