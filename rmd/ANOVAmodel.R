st.ph <- st.ph %>%
tidyr::unite("SpeciesTreatment",Species:Treatment, remove=FALSE)

anph <- aov(formula = st.ph$Mean.Plant.Height ~ st.ph$SpeciesTreatment)
anph

# hsdph <- HSD.test(anph, trt="st.ph$SpeciesTreatment")
# hsdph

krph <- agricolae::kruskal(st.ph$Mean.Plant.Height,trt=st.ph$SpeciesTreatment)
krph

shph <- shapiro.test(anph$residuals)
shph

