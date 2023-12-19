st.ph <- datab %>%
  filter(!is.na(Plant_height),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Plant.Height = mean(Plant_height),
            Median.Plant.Height = median(Plant_height),
            Variance.Plant.Height = var(Plant_height),
            Standard.Deviation.Plant.Height = sd(Plant_height))

st.sh <- datab %>%
  filter(!is.na(Soil_humidity),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Soil.Humidity = mean(Soil_humidity),
            Median.Soil.Humidity = median(Soil_humidity),
            Variance.Soil.Humidity = var(Soil_humidity),
            Standard.Deviation.Soil.Humidity = sd(Soil_humidity))

st.ln <- datab %>%
  filter(!is.na(Leaf_number),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Leaf.Number = mean(Leaf_number),
            Median.Leaf.Number = median(Leaf_number),
            Variance.Leaf.Number = var(Leaf_number),
            Standard.Deviation.Leaf.Number = sd(Leaf_number))

st.cc <- datab %>%
  filter(!is.na(Chlorophyll_content),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Chlorophyll.Content = mean(Chlorophyll_content),
            Median.Chlorophyll.Content = median(Chlorophyll_content),
            Variance.Chlorophyll.Content = var(Chlorophyll_content),
            Standard.Deviation.Chlorophyll.Content = sd(Chlorophyll_content))

st.afw <- datab %>%
  filter(!is.na(Aerial_fresh_weight),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Aerial.Fresh.Weight = mean(Aerial_fresh_weight),
            Median.Aerial.Fresh.Weight = median(Aerial_fresh_weight),
            Variance.Aerial.Fresh.Weight = var(Aerial_fresh_weight),
            Standard.Deviation.Aerial.Fresh.Weight = sd(Aerial_fresh_weight))

st.adw <- datab %>%
  filter(!is.na(Aerial_dry_weight),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Aerial.Dry.Weight = mean(Aerial_dry_weight),
            Median.Aerial.Dry.Weight = median(Aerial_dry_weight),
            Variance.Aerial.Dry.Weight = var(Aerial_dry_weight),
            Standard.Deviation.Aerial.Dry.Weight = sd(Aerial_dry_weight))

st.rl <- datab %>%
  filter(!is.na(Root_length),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Root.Length = mean(Root_length),
            Median.Root.Length = median(Root_length),
            Variance.Root.Length = var(Root_length),
            Standard.Deviation.Root.Length = sd(Root_length))

st.rfw <- datab %>%
  filter(!is.na(Roots_fresh_weight),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Roots.Fresh.Weight = mean(Roots_fresh_weight),
            Median.Roots.Fresh.Weight = median(Roots_fresh_weight),
            Variance.Roots.Fresh.Weight = var(Roots_fresh_weight),
            Standard.Deviation.Roots.Fresh.Weight = sd(Roots_fresh_weight))

st.rdw <- datab %>%
  filter(!is.na(Roots_dry_weight),Species==species,Week=="W6") %>%
  group_by(Treatment) %>%
  summarise(Mean.Roots.Dry.Weight = mean(Roots_dry_weight),
            Median.Roots.Dry.Weight = median(Roots_dry_weight),
            Variance.Roots.Dry.Weight = var(Roots_dry_weight),
            Standard.Deviation.Roots.Dry.Weight = sd(Roots_dry_weight))
