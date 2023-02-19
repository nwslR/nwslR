#' Metric definitions
#'
#' Data dictionary holding all definitions for metrics pulls from
#' \code{load_player_match_stats}, \code{load_team_match_stats},
#' \code{load_player_season_stats}, \code{load_team_season_stats}
#'
#' @note Not all metrics all available for all players, matches, teams, or seasons
#'
#' @export
load_metrics <- function() {
  m <- readr::read_csv("https://github.com/nwslR/nwsldata/releases/download/key_tables/metrics.csv",
                       show_col_types = FALSE)

  return(m)
}
