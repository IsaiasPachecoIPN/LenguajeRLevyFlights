
path <- getwd()
csv = read.csv(paste(path, "/CIC/Probabilidad/Proyectos/LevyFlightsDistribution/BluewhalesEasternNorthPacific1993-2008-ArgosData.csv", sep = ""))

#convertir la columan timestamp a horas
timestamp <- as.POSIXct(csv$timestamp)
