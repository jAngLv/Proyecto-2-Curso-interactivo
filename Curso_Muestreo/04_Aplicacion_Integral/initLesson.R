# initLesson.R para la lección 4 (actividad integradora)
# Crea la población de usuarios para el problema de software

set.seed(456)

# Función que devuelve los datos (para que el estudiante pueda cargarlos)
init_data <- function() {
  usuarios_app <- data.frame(
    id = 1:5000,
    dispositivo = sample(c("Móvil", "Laptop", "Tablet"), 5000, replace = TRUE, prob = c(0.5, 0.3, 0.2)),
    tiempo_carga = round(rnorm(5000, mean = 2.5, sd = 0.8), 2)  # en segundos
  )
  # Ajustar para que no haya tiempos negativos
  usuarios_app$tiempo_carga[usuarios_app$tiempo_carga < 0] <- 0.5
  return(usuarios_app)
}

# Crear el objeto para que esté disponible al inicio de la lección
usuarios_app <- init_data()