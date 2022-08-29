
plot_base_clean <- db1_summary %>%
  ggplot(aes(x= year, y = n, fill = Age_edited)) +  
  geom_col(position="dodge") +
  #coord_flip()+
  labs(fill = "Age", x = 'Year', y = 'Count') +
  # apply basic black and white theme - this theme removes the background colour by default
  theme_bw() + 
  # remove gridlines. panel.grid.major is for vertical lines, panel.grid.minor is for horizontal lines
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        # remove borders
        panel.border = element_blank(),
        # removing borders also removes x and y axes. Add them back
        axis.line = element_line())

x <- plot_base_clean + facet_wrap(~Continent, nrow = 2,scales = "free") + 
  theme(axis.text.x = element_text(angle = 40),panel.spacing = unit(1, "lines"))
ggplotly(x)