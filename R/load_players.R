#' Loads player table
#'
#' Loads player table that holds player IDs for all players who have made
#' rosters 2016-present
#'
#' @export
load_players <- function() {
  p <- readr::read_csv("https://github.com/nwslR/nwsldata/releases/download/key_tables/players.csv",
                       show_col_types = FALSE)

  return(p)
}
