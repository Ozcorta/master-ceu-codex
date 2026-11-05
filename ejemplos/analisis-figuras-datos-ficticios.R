# Análisis y figuras de ejemplo para el caso ficticio de readaptación.
# ESTADO: preparado, NO ejecutado en R todavía. Validada solo la coherencia
# datos-script. Ejecutar con: Rscript ejemplos/analisis-figuras-datos-ficticios.R
#
# Datos: ejemplos/datos-ficticios-caso.csv (inventados, uso docente).
# Columnas esperadas:
#   semana                        semana de seguimiento (0-12)
#   fuerza_ext_implicada_nkg      fuerza isométrica extensores, extremidad implicada (N/kg)
#   fuerza_ext_contralateral_nkg  fuerza isométrica extensores, extremidad contralateral (N/kg)
#   salto_cmj_cm                  altura de salto contramovimiento (cm)
#   rpe_medio_0a10                esfuerzo percibido medio de las sesiones de la semana (0-10)

library(ggplot2)

ruta_datos <- file.path("ejemplos", "datos-ficticios-caso.csv")
datos <- read.csv(ruta_datos)

# Puerta de datos: estructura y rangos plausibles. Si algo falla, se detiene.
columnas_esperadas <- c("semana", "fuerza_ext_implicada_nkg",
                        "fuerza_ext_contralateral_nkg", "salto_cmj_cm", "rpe_medio_0a10")
stopifnot(all(columnas_esperadas %in% names(datos)))
stopifnot(nrow(datos) > 0)
stopifnot(all(datos$fuerza_ext_implicada_nkg > 0 & datos$fuerza_ext_implicada_nkg < 6))
stopifnot(all(datos$fuerza_ext_contralateral_nkg > 0 & datos$fuerza_ext_contralateral_nkg < 6))
stopifnot(all(datos$salto_cmj_cm > 0 & datos$salto_cmj_cm < 100))
stopifnot(all(datos$rpe_medio_0a10 >= 0 & datos$rpe_medio_0a10 <= 10))

# Índice de simetría entre extremidades (LSI, %): implicada / contralateral * 100
datos$lsi_porcentaje <- datos$fuerza_ext_implicada_nkg / datos$fuerza_ext_contralateral_nkg * 100

dir.create("resultados", showWarnings = FALSE)

tema_base <- theme_bw(base_size = 9) +
  theme(panel.grid.minor = element_blank())

# Figura 1: evolución de la fuerza de ambas extremidades (valores individuales)
fig_fuerza <- ggplot(datos, aes(x = semana)) +
  geom_point(aes(y = fuerza_ext_implicada_nkg, shape = "Implicada")) +
  geom_line(aes(y = fuerza_ext_implicada_nkg, linetype = "Implicada")) +
  geom_point(aes(y = fuerza_ext_contralateral_nkg, shape = "Contralateral")) +
  geom_line(aes(y = fuerza_ext_contralateral_nkg, linetype = "Contralateral")) +
  scale_shape_manual(values = c(Implicada = 16, Contralateral = 17)) +
  labs(x = "Semana", y = "Fuerza isométrica extensores (N/kg)",
       shape = "Extremidad", linetype = "Extremidad") +
  tema_base +
  theme(legend.position = "bottom")

# Figura 2: evolución del salto CMJ
fig_cmj <- ggplot(datos, aes(x = semana, y = salto_cmj_cm)) +
  geom_point() +
  geom_line() +
  labs(x = "Semana", y = "Altura de salto CMJ (cm)") +
  tema_base

# Exportación al ancho de columna de revista (~85 mm), PNG 300 ppp + PDF
ggsave(file.path("resultados", "figura_fuerza.png"), fig_fuerza,
       width = 85, height = 70, units = "mm", dpi = 300)
ggsave(file.path("resultados", "figura_fuerza.pdf"), fig_fuerza,
       width = 85, height = 70, units = "mm")
ggsave(file.path("resultados", "figura_cmj.png"), fig_cmj,
       width = 85, height = 70, units = "mm", dpi = 300)
ggsave(file.path("resultados", "figura_cmj.pdf"), fig_cmj,
       width = 85, height = 70, units = "mm")

# Resumen descriptivo mínimo con trazabilidad (cifra -> salida -> script)
resumen <- data.frame(
  variable = c("fuerza_ext_implicada_nkg", "fuerza_ext_contralateral_nkg",
               "salto_cmj_cm", "lsi_porcentaje"),
  semana_0 = c(datos$fuerza_ext_implicada_nkg[datos$semana == 0],
               datos$fuerza_ext_contralateral_nkg[datos$semana == 0],
               datos$salto_cmj_cm[datos$semana == 0],
               datos$lsi_porcentaje[datos$semana == 0]),
  semana_12 = c(datos$fuerza_ext_implicada_nkg[datos$semana == 12],
                datos$fuerza_ext_contralateral_nkg[datos$semana == 12],
                datos$salto_cmj_cm[datos$semana == 12],
                datos$lsi_porcentaje[datos$semana == 12])
)
print(resumen)
write.csv(resumen, file.path("resultados", "resumen_descriptivo.csv"), row.names = FALSE)

sessionInfo()
