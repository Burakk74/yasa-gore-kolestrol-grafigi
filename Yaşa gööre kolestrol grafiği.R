
library(ggplot2)

set.seed(42)
data <- data.frame(
  Age = sample(25:70, 50, replace = TRUE),      # Yaş
  BloodPressure = sample(110:180, 50, replace = TRUE), # Tansiyon
  Cholesterol = sample(150:300, 50, replace = TRUE)    # Kolesterol
)

 

ggplot(data, aes(x = Age, y = BloodPressure, size = Cholesterol, color = Cholesterol)) +
  geom_point(alpha = 0.7) +
  scale_color_gradient(low = "blue", high = "red") +
  labs(
    title = "Yasa Gore Tansiyon ve Kolesterol Seviyeleri",
    subtitle = "Balon boyutlari kolesterol seviyesini temsil ediyor",
    x = "Yas",
    y = "Tansiyon (mmHg)",
    size = "Kolesterol",
    color = "Kolesterol"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16),
    plot.subtitle = element_text(hjust = 0.5, size = 12),
    legend.position = "right"
  )
