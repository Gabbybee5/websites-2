library(tidyverse)

top_songs <- read_rds("clean_data.rds")

billboard_plot <- ggplot(top_songs, aes( x = week, y = rank, group = track, color = artist )) + geom_line(linewidth = 1, alpha = 0.7) + scale_y_reverse() + scale_color_viridis_d() + labs( title = "The Race to the Top of the Billboard Charts", subtitle = "How songs move through the charts over 20 weeks", x = "Weeks on Billboard", y = "Chart Position", color = "Artist" ) + theme_minimal(base_size = 13) + theme( plot.title = element_text(face = "bold", size = 18), legend.position = "none" )

ggsave( filename = "billboard_plot.png", plot = billboard_plot, width = 10, height = 6, dpi = 300 )
