
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nwslR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![R-CMD-check](https://github.com/nwslR/nwslR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nwslR/nwslR/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`nwslR` is an R ecosystem that contains datasets and analysis
functionality for the National Women’s Soccer League (NWSL). Founded in
2013, the NWSL is the United States’ top professional women’s soccer
league, featuring players from all over the world.

Accessibility of data in women’s sports (and particularly soccer) lags
behind its male counterparts. This package is on contribution to a
growing ecosystem of open data sources that aims to make data available
to fans and analysts of the league. The main package, `nwslR`, provides
functions to data easily access data that is loaded in the [nwsldata
repo](https://github.com/nwslR/nwsldata). Data is updated several times
a week during the season and more sporadically in the offseason.

If you see anything you’d like added, changed, or updated, please open
up a new issue of your own. If you are interested in contributing,
please contact us directly. If you use this data in any work, please
cite us.

This package is currently in the process of changing and updating
significantly, so it is suggested that you frequently update it so that
you have access to the most recent version. CRAN submission will come
when it reaches a stable state.

## Installation

You can install the development version of nwslR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("nwslR/nwslR", 
                         ref = "adror1/build_first_draft")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(nwslR)
## basic example code
```

## Available Table Types

- `load_player_match_stats()`: Loads player level stats for a given
  match
- `load_player_season_stats()`: Loads player level stats for a
  team/season
- `load_team_match_stats()`: Loads team level stats for a given match
- `load_team_season_stats()`: Loads team level stats for a team/season

# Example:

``` r
head(load_player_match_stats("angel-city-fc-vs-racing-louisville-fc-2022-09-25"))
```

    ## # A tibble: 6 × 187
    ##   match_id       team_id playe…¹ long_…² passe…³ saves…⁴ passe…⁵ passe…⁶ long_…⁷
    ##   <chr>            <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>
    ## 1 angel-city-fc…      15     229       5       8       2      32      19       1
    ## 2 angel-city-fc…      15     559       1      20       0      41      21       3
    ## 3 angel-city-fc…      15     152       5      23       0      55      40       9
    ## 4 angel-city-fc…      15     618       1      11       0      31      15       3
    ## 5 angel-city-fc…      15     185       0      10       0      13       9       1
    ## 6 angel-city-fc…      15     174       1      12       0      19       9       3
    ## # … with 178 more variables: passes_leftside_opposition_half_total <dbl>,
    ## #   loss_of_possession_no_clearance <dbl>,
    ## #   passes_to_left_wing_opposition_half_total <dbl>, total_chipped_pass <dbl>,
    ## #   saves <dbl>, entries_final_third <dbl>, launches_total <dbl>,
    ## #   penalties_faced <dbl>, clearances_successful <dbl>,
    ## #   passes_final_third_total <dbl>, clearances_total <dbl>,
    ## #   sweeper_keeper_accurate <dbl>, possession_won_defensive_3rd <dbl>, …
