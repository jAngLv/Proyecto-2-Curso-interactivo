# initLesson.R para la lección 1
# Crea objetos que serán utilizados en los ejercicios de la lección

set.seed(123)

# Población de ejemplo (100 estudiantes con semestre y promedio)
estudiantes <- data.frame(
  id = 1:100,
  semestre = rep(1:5, each = 20),
  promedio = round(rnorm(100, mean = 8, sd = 0.8), 1)
)

# Población simple para muestreo aleatorio y sistemático
poblacion <- 1:200

# Tamaño de población
N <- length(poblacion)