datab$variables <- datab[[variables]]
mean_byweeks <- datab %>%
  filter(!is.na(variables)) %>%
  group_by(Species, Treatment) %>%
  summarise(Mean = mean(variables))
#barplot

b <- ggplot(mean_byweeks, aes(x = Species, y = Mean, fill = Treatment, colour = Treatment)) +   geom_bar(stat = "identity", position = "dodge")+
  labs(x = "Species",
       y = variablesname) +
  theme_minimal() +
  theme(plot.caption = element_text(hjust = 0), axis.text.x = element_text(face="italic", angle = 60, vjust = 1, hjust=1))+
  scale_fill_brewer(palette="Set1") 
