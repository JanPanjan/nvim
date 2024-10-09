library(tidyverse)
source("util.R")

# main
log <- read.delim("startuptime.log", header = F) %>%
    unlist() %>%
    setNames(NULL)

log %>% grep(pattern = "STARTING") -> start_ids
log %>% grep(pattern = "STARTED") -> end_ids

nvim_start <- data.frame(name = log[start_ids[1]:end_ids[1]]) %>%
    fix_blankspace() %>%
    fix_df() %>%
    fix_third_col() %>%
    arrange(desc(self_time)) %>%
    write.table(., "nvimStartTime.txt", row.names = F, col.names = F)

plugins_start <- data.frame(name = log[start_ids[2]:end_ids[2]]) %>%
    fix_blankspace() %>%
    fix_df() %>%
    fix_third_col() %>%
    arrange(desc(self_time)) %>%
    write.table(., "pluginsStartTime.txt", row.names = F, col.names = F)
