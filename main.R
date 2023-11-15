
library(geosphere)
library(stabledist)

path <- getwd()
df <- read.csv(paste(path, "/CIC/Probabilidad/Proyectos/LevyFlightsDistribution/BluewhalesEasternNorthPacific1993-2008-ArgosData.csv", sep = ""))

# Calcular las distancias entre ubicaciones consecutivas
distances <- distHaversine(df[1:(nrow(df)-1), c("location.long", "location.lat")],
                           df[2:nrow(df), c("location.long", "location.lat")])


distances <- sort(distances, decreasing = TRUE)
barplot(distances, width = 1)
hist(distances, breaks = 300)
