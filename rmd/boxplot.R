datab$variables <- datab[[variables]]
d <- datab %>%
  filter(!is.na(variables))

b <- ggplot(d, aes(x = Species, y = variables, 
              fill = Treatment)) +   
  geom_boxplot()+
  labs(x = "Species",
       y = variablesname) +
  theme_minimal() +
  theme(plot.caption = element_text(hjust = 0), axis.text.x = element_text(face="italic", angle = 60, vjust = 1, hjust=1))+
  scale_fill_brewer(palette="Set1") 

