# Define the colors inspired by PGA Tour branding
pga_blue <- "#005DAA"
pga_green <- "#7AB648"
pga_yellow <- "#FFD100"
pga_red <- "#FF282F"
pga_gray <- "#C7C7C7"

# Define the ggplot theme
pga_theme <- theme(
  panel.background = element_rect(fill = pga_blue),
  panel.grid.major = element_line(color = pga_gray),
  panel.grid.minor = element_blank(),
  panel.border = element_blank(),
  axis.line = element_blank(),
  axis.ticks = element_blank(),
  axis.text = element_text(color = "white"),
  axis.title = element_text(color = "white", size = 12, face = "bold"),
  legend.background = element_rect(fill = pga_blue, color = pga_gray),
  legend.title = element_text(color = "white", face = "bold"),
  legend.text = element_text(color = "white"),
  legend.key = element_rect(fill = pga_yellow),
  plot.title = element_text(color = "white", size = 24, face = "bold"),
  plot.subtitle = element_text(color = "white", size = 16, face = "italic"),
  plot.caption = element_text(color = pga_gray, size = 10),
  plot.background = element_rect(fill = pga_blue),
  plot.margin = unit(c(1, 1, 1, 1), "cm")
)

