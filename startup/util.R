fix_blankspace <- function(df) {
    lapply(df, gsub, pattern = "\\s+", replacement = " ") %>% as.data.frame()
}

fix_df <- function(df) {
    df %>%
        separate(
            col = name,
            into = c("total_time", "self_time", "dscr"),
            sep = " ",
            extra = "merge"
        ) %>%
        {
            .[, "total_time"] <- as.numeric(.[, "total_time"])
            .
        } %>%
        {
            .[, "self_time"] %>%
                sapply(., sub, pattern = ":", replacement = "") %>%
                setNames(NULL) %>%
                as.numeric() -> mod

            .[, "self_time"] <- mod
            .
        }
}

fix_third_col <- function(df) {
    df %>%
        .[, 3] %>%
        grepl(pattern = ":") %>%
        which(. == T) %>%
        {
            df[, 3] %>%
                sub(".*: ", "", .) -> mod
            df[, 3] <- mod
            df
        }
}

read_log <- function(filename) {
    read.table(filename) %>% 
        { 
            names(.) <- c("total_time", "self_time", "dscr")
            .
        }
}
