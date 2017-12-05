library(quantmod)
getSymbols("KANS129URN", src = "FRED")
names(KANS129URN) = "rate"
library(dygraphs)
dygraph(KANS129URN, main = "Unemployment Rate in Kansas City, MO-KS")