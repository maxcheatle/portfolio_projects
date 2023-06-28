# Define the colors inspired by West Ham branding
west_ham_claret <- "#7A263A"
west_ham_sky_blue <- "#82C0E5"
west_ham_dark_blue <- "#1C1E3F"
west_ham_light_gray <- "#E6E6E6"

# Define the ggplot theme
west_ham_theme <- theme(
  panel.background = element_rect(fill = west_ham_claret),
  panel.grid.major = element_line(color = west_ham_light_gray),
  panel.grid.minor = element_blank(),
  panel.border = element_blank(),
  axis.line = element_line(color = west_ham_light_gray),
  axis.ticks = element_line(color = west_ham_light_gray),
  axis.text = element_text(color = west_ham_light_gray),  # Set axis text color to white
  axis.title = element_text(color = west_ham_light_gray, size = 12, face = "bold"),
  legend.background = element_rect(fill = west_ham_claret, color = west_ham_light_gray),
  legend.title = element_text(color = west_ham_light_gray, face = "bold"),
  legend.text = element_text(color = west_ham_light_gray),
  legend.key = element_rect(fill = west_ham_dark_blue),
  plot.title = element_text(color = west_ham_light_gray, size = 24, face = "bold"),
  plot.subtitle = element_text(color = west_ham_light_gray, size = 16, face = "italic"),
  plot.caption = element_text(color = west_ham_light_gray, size = 10),
  plot.background = element_rect(fill = west_ham_claret),
  plot.margin = unit(c(1, 1, 1, 1), "cm")
)

)
