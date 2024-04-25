#' Provides user-friendly error messages
#'
#' Wrapper on \code{readr::read_csv()} to create better error messages when
#' match data does not exist
#'
#' @param url url to pull file from
#'
read_nwsl_data <- function(url) {
  tryCatch(
    readr::read_csv(
      file = url,
      show_col_types = FALSE
    ),
    error = function(err) {
      msg <- err$message
      if (stringr::str_detect(msg, "HTTP error 404") & stringr::str_detect(url, "player_match_summaries|team_match_summaries")) {
        stop("Error: File for given URL does not exist. HINT: While this match ID is correct, not all matches have data.")
      }

      if(stringr::str_detect(msg, "HTTP error 404") & stringr::str_detect(url, "player_season_summaries|team_season_summaries")){
        stop("Error: File for given URL does not exist. HINT: Did the team play in the season requested?")
      }
    }
  )
}

#' All available seasons
#'
#' All available season names to pull data
#'
#' @export
available_seasons <- function() {
  c(
    "2016",
    "2017",
    "2018",
    "2019",
    "2020_NWSL_Challenge_Cup",
    "2020_NWSL_Fall_Series",
    "2021_NWSL_Challenge_Cup",
    "2021",
    "2022_NWSL_Challenge_Cup",
    "2022",
    "2023",
    "2023_NWSL_Challenge_Cup",
    "2024",
    "2024_NWSL_Challenge_Cup"
  )
}

#' All available teams
#'
#' All available team abbreviations to pull data
#'
#' @export
available_teams <- function() {
  c(
    "BOS",
    "CHI",
    "KC",
    "HOU",
    "NJY",
    "RGN",
    "ORL",
    "POR",
    "WAS",
    "WNY",
    "NC",
    "UTA",
    "KCC",
    "LOU",
    "LA",
    "SD",
    "BAY"
  )
}
