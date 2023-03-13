#' Loads player level match stats
#'
#' Loads player level stats for a given match ID
#'
#' @param match_id match id available from \code{load_matches()}
#'
#' @examples
#' \donttest{
#' match <- load_player_match_stats("portland-thorns-fc-vs-kansas-city-current-2022-10-29")
#' }
#'
#' @seealso See \code{load_metrics} for information about returned metrics. Not all
#' metrics exist for a given match. Join on \code{load_players()} and \code{load_teams()}.
#'
#' @source \url{www.nwslsoccer.com}
#'
#' @export
load_player_match_stats <- function(match_id = c()) {

  if(length(match_id) < 1){
    stop("Argument 'match_id' is missing, with no default. Please select a match from load_matches().")
  }

  # * Check -- Does match exist?
  matches <- load_matches()

  does_match_exist <- match_id %in% unique(matches$match_id)

  if(!does_match_exist == TRUE){
    stop("Error: Match does not exist! Please make sure you are using the correct Match ID.")
  } else {
    # * Pull match if exists
    url <- glue::glue("https://github.com/nwslR/nwsldata/releases/download/player_match_summaries/{match_id}.csv")
    match <- read_nwsl_data(url = url)
  }

  return(match)
}

#' Loads team level match stats
#'
#' Loads team level stats for a given match ID
#'
#' @param match_id match id available from \code{load_matches()}
#'
#' @examples
#' \donttest{
#' match <- load_team_match_stats("portland-thorns-fc-vs-kansas-city-current-2022-10-29")
#' }
#'
#' @seealso See \code{load_metrics} for information about returned metrics. Not all
#' metrics exist for a given match. Join on \code{load_teams()}.
#'
#' @source \url{www.nwslsoccer.com}
#'
#' @export
load_team_match_stats <- function(match_id = c()) {

  if(length(match_id) < 1){
    stop("Argument 'match_id' is missing, with no default. Please select a match from load_matches().")
  }

  matches <- load_matches()

  does_match_exist <- match_id %in% unique(matches$match_id)

  if(!does_match_exist == TRUE){
    stop("Error: Match does not exist! Please make sure you are using the correct Match ID.")
  } else {
    url <- glue::glue("https://github.com/nwslR/nwsldata/releases/download/team_match_summaries/{match_id}.csv")
    match <- read_nwsl_data(url = url)
  }

  return(match)

}
