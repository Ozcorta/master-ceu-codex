---
name: interpretar-cambio-individual
description: Guía para decidir cuándo un cambio en el seguimiento de UNA persona cuenta como real o importante en el TFM (estudio de caso). Distingue cambio que supera el error de medida de cambio importante, exige la fuente y aplicabilidad de cualquier umbral y deriva el cálculo y la figura a la skill analizar-datos-tfm. Usar cuando el alumno pregunte si la mejora de su caso "es real", "supera el error", "es suficiente" o quiera usar SEM, MDC, MIC o SWC. No usar para comparar grupos ni para afirmar eficacia de la intervención.
---

# Interpretar el cambio en el seguimiento individual

Ayuda al alumno a juzgar el cambio de UNA persona sin inventar umbrales. "Cambio mínimo suficiente" son dos preguntas distintas, y mezclarlas enseña mal:

1. **¿El cambio supera el error de medida?** (detectable). Depende de la fiabilidad de ESA prueba, en ESA población, escala y protocolo.
2. **¿El cambio es importante para esa persona?** (relevante). Es otro concepto: superar el error NO demuestra importancia (de Vet et al., 2010, https://doi.org/10.1016/j.jclinepi.2009.12.015).

Ninguna de las dos, por sí sola ni juntas, prueba que la intervención funcionó: una mejoría compatible con un cambio real no es evidencia de eficacia ni de causalidad.

## Antes de elegir vía: qué tiene el alumno

Pregunta si dispone de un dato de umbral para su prueba. Si no lo tiene claro, ayúdale a identificar qué tipo de dato sería (de un estudio de fiabilidad test-retest, de las propias medidas repetidas de línea base con diseño adecuado, o de la literatura) antes de seguir.

## Vía A: el alumno aporta un umbral

1. Registra sus datos completos: valor, unidades, TIPO (SEM, MDC, MIC, SWC u otro), fuente exacta, población y protocolo en que se obtuvo.
2. Comprueba la aplicabilidad al caso: misma prueba, escala, población comparable y protocolo. Si no encaja o falta información, dilo y no interpretes.
3. Conserva el significado de cada medida; NO las trates como la misma banda:
   - SEM es el error típico de medida; NO es por sí solo un umbral de cambio.
   - MDC (p. ej., MDC95 = 1,96 x raíz(2) x SEM) es el cambio que supera el error con un nivel de confianza, SOLO si se cumplen los supuestos: error aproximadamente constante, línea base estable, misma escala/protocolo/población. Explica esos supuestos al aplicarlo.
   - MIC / cambio importante se refiere a importancia, no al error. Los métodos de distribución (0,5 SD, SEM) no estiman importancia.
   - SWC depende del contexto (deportivo, clínico) y no es universal (https://sportscience.sportsci.org/jour/04/wghtests.htm).
   - No apliques una fórmula universal sobre cualquier resumen: la incertidumbre cambia si la referencia es la media de la línea base o un par de mediciones; si el diseño no está claro, dilo en lugar de calcular.
4. Con umbral aplicable: encarga la figura a la skill `analizar-datos-tfm` (misma puerta de privacidad y mismas reglas de método): serie individual con banda del umbral alrededor de la línea base, definiendo explícitamente cómo se calcula esa línea base y anotando los supuestos en la figura o su pie.
5. Interpreta con prudencia: "supera el error" no es "es importante", y ninguno implica eficacia.

## Vía B: sin umbral disponible

1. Seguimiento descriptivo: serie individual sin banda de error ni afirmación de cambio detectable o importante. La figura se encarga igualmente a `analizar-datos-tfm`.
2. NO infieras el SEM de la fluctuación de la línea base sin un diseño de fiabilidad que lo justifique; no inventes la banda.
3. Describe la evolución y registra como limitación la ausencia de una estimación del error de medida.

## Prohibido

- Umbrales universales por prueba. Un valor tipo "0,2 SD" es a lo sumo un valor por defecto de contexto, nunca una verdad aplicable a cualquier test.
- Presentar SEM, MDC y MIC como la misma banda o intercambiables.
- Derivar importancia del hecho de superar el error, ni eficacia de superar cualquier umbral.
- Decidir el tipo de umbral por el alumno sin que conste su fuente.

## Conexión con el resto del paquete

- `analizar-datos-tfm`: ejecuta el cálculo y genera la figura (con o sin banda, según esta skill decida). Esta skill guía el umbral; aquella grafica.
- `verificar-tfm`: comprueba después si el TFM reporta lo que los apuntes piden.
- `tutor_metodologico`: dudas abiertas de diseño o medición.

## Fuentes

- de Vet HC et al. (2010). J Clin Epidemiol. https://doi.org/10.1016/j.jclinepi.2009.12.015 (detectable no equivale a importante).
- Hopkins WG. https://sportscience.sportsci.org/jour/04/wghtests.htm (SWC contextual, no universal).
- Weir JP (2005, JSCR): fuente clásica de SEM/MDC citada en los apuntes del máster (diapositiva "El gráfico del caso: serie individual con banda de error"). Referencia tomada de los apuntes; URL no verificada.
