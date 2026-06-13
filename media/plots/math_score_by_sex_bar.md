library(ggplot2)
library(plotly)
library(htmlwidgets)
avg_math_by_sex <- bigclass %>% group_by(sex) %>% summarise(avg_math = mean(Math))
p <- ggplot(avg_math_by_sex, aes(x = sex, y = avg_math, fill = sex)) +
  geom_bar(stat = "identity", alpha = 0.8) +
  scale_fill_manual(values = c("F" = "#D55E00", "M" = "#009E73")) + 
  labs(title = "Average Math Score by Sex", x = "Sex", y = "Average Math Score") +
  theme_minimal() +
  theme(plot.title = element_text(size = 18, face = "bold"),
        axis.title.x = element_text(size = 18),
        axis.title.y = element_text(size = 18),
        axis.text.x = element_text(size = 14),
        axis.text.y = element_text(size = 14),
        panel.background = element_rect(fill = "white", colour = NA),
        legend.position = "none")
p_plotly <- ggplotly(p)
saveWidget(p_plotly, "media/plots/math_score_by_sex_bar.html", selfcontained = TRUE)
