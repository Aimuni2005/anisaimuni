library(ggplot2)
library(plotly)
library(htmlwidgets)

# Create the histogram plot for Height
p_height <- ggplot(bigclass, aes(x = height)) +
  geom_histogram(binwidth = 5, fill = '#009E73', color = 'white') + # Using a different Okabe-Ito color
  labs(title = 'Distribution of Heights', x = 'Height (inches)', y = 'Frequency') +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = 'white', color = NA),
    axis.title = element_text(size = 18),
    axis.text = element_text(size = 14)
  )

# Convert to plotly object
plotly_p_height <- ggplotly(p_height)

# Save as HTML widget
saveWidget(plotly_p_height, 'media/plots/heights_histogram.html', selfcontained = TRUE)
