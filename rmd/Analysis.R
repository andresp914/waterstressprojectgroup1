st.ph <- datab %>%
  filter(!is.na(Plant_height),Species==species,Week=="W6") %>%
  group_by(Species,Treatment,Week) %>%
  summarise(Mean.Plant.Height = mean(Plant_height),
            Median.Plant.Height = median(Plant_height),
            Variance.Plant.Height = var(Plant_height),
            Standard.Deviation.Plant.Height = sd(Plant_height))
