library(ggplot2)
library(dplyr)
library(tidyr)
library(agricolae)
# Group by Species, Treatment, and Week and calculate mean
wild$variable <- wild[[variable]]
mean_byweeks <- wild %>%
  group_by(Species, Treatment, Week) %>%
  summarise(Mean = mean(variable))

# Create a ggplot with facets for each species
g <- ggplot(mean_byweeks, aes(x = Week, y = Mean, color = Treatment, group = Treatment)) +
  geom_point() +
  geom_line() +
  theme_bw() +
  facet_wrap(~Species, scales = "free_y")+
  theme(strip.text = element_text(face = "italic"))+
  labs(x = "Week",
       y = variablename) +
  theme(plot.caption = element_text(hjust = 0), legend.position = "top", legend.box.background = element_rect(colour = "black")) # Facet by Species with free y-axis scales
