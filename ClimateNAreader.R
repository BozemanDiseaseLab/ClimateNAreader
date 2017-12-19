setwd("C:/Users/Nathan/Desktop/ClimateNAreader")

df <- read.csv("Input/ClimateNA_gridinput_testsubset.csv", stringsAsFactors=F)

flag1 <- F
flag2 <- F
names <- c('lat', 'long', 'el')

for (i in 1:ncol(df)) {
  if (colnames(df)[i] != names[i]) {
    flag1 <- T
  }
}

if (length(colnames(df)) != 3) {
  flag2 <- T
}

if (!flag1 && !flag2) {
  df[nrow(df)+1,] <- data.frame(lat=df$lat[1], long=df$long[1], el=df$el[1])

  lat <- ""
  for (i in df$lat) {
    lat <- paste0(lat, i, ", ")
  }
  lat <- paste0("let lat = [", substr(lat, 1, nchar(lat)-2), "];")

  write.table(lat, "Arrays/lat.txt", row.names=F, col.names=F, quote=F)

  long <- ""
  for (i in df$long) {
    long <- paste0(long, i, ", ")
  }
  long <- paste0("let long = [", substr(long, 1, nchar(long)-2), "];")

  write.table(long, "Arrays/long.txt", row.names=F, col.names=F, quote=F)

  el <- ""
  for (i in df$el) {
    el <- paste0(el, i, ", ")
  }
  el <- paste0("let el = [", substr(el, 1, nchar(el)-2), "];")

  write.table(el, "Arrays/el.txt", row.names=F, col.names=F, quote=F)
} else {
  if (flag1) {
    print("ERROR: column names must be 'lat, long, el'")
  } else {
    print("ERROR: the number of columns must be equal to 3")
  }
}
