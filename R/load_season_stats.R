#' Loads player level season stats
#'
#' Loads player level season stats for a given team ID/season
#'
#' @param team_id team_id available from \code{available_teams()}
#' @param season season available from \code{available_seasons()}
#'
#' @examples
#' \donttest{
#' season <- load_player_season_stats(team_id = "POR", season = "2022")
#' short_season <- load_player_season_stats(team_id = "POR", season = "2022_NWSL_Challenge_Cup")
#' }
#'
#' @seealso See \code{load_metrics} for information about returned metrics. Not all
#' metrics exist for a given match. Join on \code{load_players()} and \code{load_teams()}.
#'
#' @source \url{www.nwslsoccer.com}
#'
#' @export
load_player_season_stats <- function(team_id,
                                     season) {

  team_id <- match.arg(team_id, available_teams())
  season <- match.arg(season, available_seasons())

  # * Pull match if exists
  url <- glue::glue("https://github.com/nwslR/nwsldata/releases/download/player_season_summaries/{team_id}_{season}.csv")
  season <- read_nwsl_data(url = url)

  return(season)
}

#' Loads team level season stats
#'
#' Loads team level season stats for a given team ID/season
#'
#' @param team_id team_id available from \code{available_teams()}
#' @param season season available from \code{available_seasons()}
#'
#' @examples
#' \donttest{
#' season <- load_team_season_stats(team_id = "POR", season = "2022")
#' short_season <- load_team_season_stats(team_id = "POR", season = "2022_NWSL_Challenge_Cup")
#' }
#'
#' @seealso See \code{load_metrics} for information about returned metrics. Not all
#' metrics exist for a given match. Join on \code{load_teams()}.
#'
#' @source \url{www.nwslsoccer.com}
#'
#' @export
load_team_season_stats <- function(team_id,
                                   season) {

  team_id <- match.arg(team_id, available_teams())
  season = match.arg(season, available_seasons())

  # * Pull match if exists
  url <- glue::glue("https://github.com/nwslR/nwsldata/releases/download/team_season_summaries/{team_id}_{season}.csv")
  season <- read_nwsl_data(url = url)

  return(season)
}
