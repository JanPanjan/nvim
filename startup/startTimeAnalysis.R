library(tidyverse)
source("logParsing.R")

read_log("nvimStartTime.txt") -> nvim
read_log("pluginsStartTime.txt") -> plug
