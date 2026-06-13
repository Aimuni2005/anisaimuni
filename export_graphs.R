
library(ggplot2)
library(plotly)
library(htmlwidgets)

# Create the histogram plot
p <- ggplot(bigclass, aes(x = Math)) +
  geom_histogram(binwidth = 50, fill = '#0072B2', color = 'white') +
  labs(title = 'Distribution of Math Scores', x = 'Math Score', y = 'Frequency') +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = 'white', color = NA),
    axis.title = element_text(size = 18),
    axis.text = element_text(size = 14)
  )

# Convert to plotly object
plotly_p <- ggplotly(p)

# Save as HTML widget
saveWidget(plotly_p, 'media/plots/math_scores_histogram.html', selfcontained = TRUE)

# Save the R code
code_to_save <- c(
  "library(ggplot2)",
  "library(plotly)",
  "library(htmlwidgets)",
  "",
  "p <- ggplot(bigclass, aes(x = Math)) +",
  "  geom_histogram(binwidth = 50, fill = '#0072B2', color = 'white') +",
  "  labs(title = 'Distribution of Math Scores', x = 'Math Score', y = 'Frequency') +",
  "  theme_minimal() +",
  "  theme(",
  "    plot.background = element_rect(fill = 'white', color = NA),
  "    axis.title = element_text(size = 18),
  "    axis.text = element_text(size = 14)
  "  )",
  "",
  "plotly_p <- ggplotly(p)",
  "",
  "saveWidget(plotly_p, 'media/plots/math_scores_histogram.html', selfcontained = TRUE)"
)
writeLines(code_to_save, 'media/plots/math_scores_histogram.md')

print('Histogram of Math Scores saved to media/plots/math_scores_histogram.html and R code saved to media/plots/math_scores_histogram.md')
