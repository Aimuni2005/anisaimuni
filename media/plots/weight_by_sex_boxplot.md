library(ggplot2)
library(plotly)
library(htmlwidgets)
p <- ggplot(bigclass, aes(x = sex, y = weight, fill = sex)) +
  geom_boxplot(alpha = 0.8) +
  scale_fill_manual(values = c("F" = "#0072B2", "M" = "#D55E00")) + 
  labs(title = "Weight Distribution Grouped by Sex", x = "Sex", y = "Weight") +
  theme_minimal() +
  theme(plot.title = element_text(size = 18, face = "bold"),
        axis.title.x = element_text(size = 18),
        axis.title.y = element_text(size = 18),
        axis.text.x = element_text(size = 14),
        axis.text.y = element_text(size = 14),
        panel.background = element_rect(fill = "white", colour = NA),
        legend.position = "none")
p_plotly <- ggplotly(p)
saveWidget(p_plotly, "media/plots/weight_by_sex_boxplot.html", selfcontained = TRUE)
