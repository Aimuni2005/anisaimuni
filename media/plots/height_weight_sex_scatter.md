library(ggplot2)
library(plotly)
library(htmlwidgets)
p <- ggplot(bigclass, aes(x = weight, y = height, color = sex)) +
  geom_point(alpha = 0.8, size = 3) +
  scale_color_manual(values = c("F" = "#009E73", "M" = "#CC79A7")) + 
  labs(title = "Height vs. Weight, Coloured by Sex", x = "Weight", y = "Height") +
  theme_minimal() +
  theme(plot.title = element_text(size = 18, face = "bold"),
        axis.title.x = element_text(size = 18),
        axis.title.y = element_text(size = 18),
        axis.text.x = element_text(size = 14),
        axis.text.y = element_text(size = 14),
        panel.background = element_rect(fill = "white", colour = NA),
        legend.title = element_text(size = 16),
        legend.text = element_text(size = 14))
p_plotly <- ggplotly(p)
saveWidget(p_plotly, "media/plots/height_weight_sex_scatter.html", selfcontained = TRUE)
