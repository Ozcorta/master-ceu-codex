# Flujo de datos y figuras para el TFM (trasladable a Codex o Colab)

Este flujo es el mismo use cual herramienta use el alumnado. Las skills de Codex
(`analizar-datos-tfm`, `interpretar-cambio-individual`) y el cuaderno de Colab
(`ejemplos/colab-analisis-figuras-datos-ficticios.ipynb`) lo aplican; si el alumnado usa
otra IA, estas son las reglas que debe pedirle que siga.

## 1. Privacidad, antes de cargar nada

- La IA en la nube (Codex, Colab/Gemini u otra) procesa lo que se sube; ejecutar el código
  en el propio equipo no cambia que el archivo ya se compartió.
- La revisión se hace ANTES de cargar el archivo. Quitar el nombre o poner "sujeto 1"
  NO basta: en un estudio de caso, la combinación de deporte, club, lesión, edad, fechas
  o puesto puede identificar a la persona.
- Si los datos no pueden compartirse: la IA escribe el código usando solo la estructura
  (columnas, unidades, número de filas) o datos ficticios, y el análisis se ejecuta en el
  equipo del alumno sobre los datos reales.

## 2. Puerta de datos

Confirmar antes de analizar: qué mide cada columna, unidades, número de registros, medidas
repetidas y valores faltantes. No inventar variables ni unidades. Toda exclusión de datos
se propone y se registra con su motivo.

## 3. Cambios descriptivos (siempre)

Tabla y figura de la evolución con los valores individuales (no solo medias). Son
descripciones de esa persona: no son una prueba estadística ni demuestran eficacia.

## 4. Umbral de cambio (dos vías)

- **Con umbral aportado:** registrar valor, unidades, tipo (MDC, MIC, SWC u otro), fuente
  exacta y población/protocolo del estudio de origen, y confirmar que aplica al caso
  (misma escala, población comparable, mismo protocolo). Entonces la figura puede llevar
  la banda alrededor de la línea base, con los supuestos explícitos: error aproximadamente
  constante, línea base estable y definida, misma métrica entre sesiones.
- **Sin umbral:** seguimiento descriptivo sin banda. No se afirma que el cambio supere el
  error de medida ni que sea importante. No se infiere el error de la variabilidad de la
  línea base sin un diseño de fiabilidad que lo justifique.

Recordatorios: SEM no es por sí solo un umbral de cambio; MDC (superar el error) y MIC
(ser importante) no son la misma banda; superar el error no demuestra importancia; ningún
umbral prueba que la intervención funcionara. La significación estadística de grupos no
aplica a un caso único.

## 5. Trazabilidad

Cada cifra del TFM debe poder señalarse en una salida concreta (tabla o figura) y en el
código que la produce. Figura, código y datos usados se guardan juntos. La IA propone;
las cifras salen de ejecutar el código, nunca de la conversación. En el TFM se declara la
herramienta usada según la normativa del máster.
