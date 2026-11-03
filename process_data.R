library(tidyverse)

top_songs <- tidyr::billboard |> pivot_longer( cols = starts_with("wk"), names_to = "week", values_to = "rank", names_prefix = "wk", values_drop_na = TRUE ) |> mutate(week = as.numeric(week)) |> filter(week <= 20)

write_rds(top_songs, file = "clean_data.rds")
