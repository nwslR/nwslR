#' Loads team table
#'
#' Loads team table that holds team IDs for all teams that have played
#' from 2016-present
#'
#' @export
load_teams <- function() {
  t <- readr::read_csv("https://github.com/nwslR/nwsldata/releases/download/key_tables/teams.csv",
                       show_col_types = FALSE)

  return(t)
}
