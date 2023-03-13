#' Loads match table
#'
#' Loads match table that holds all matches played between 2016-present
#' w/ match IDs
#'
#' @note Most, but not all, matches in table have associated stats that you can
#' pull by feeding match ID into \code{load_player_match_stats} or
#' \code{load_team_match_stats}. Match start times are in East Coast USA time.
#'
#' @export
load_matches <- function() {
  m <- readr::read_csv("https://github.com/nwslR/nwsldata/releases/download/key_tables/matches.csv",
                       show_col_types = FALSE)

  return(m)
}
