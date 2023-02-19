
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nwslR

<!-- badges: start -->

[\[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)\](https://www.tidyverse.org/lifecycle/#experimental)
![R-CMD-check](https://github.com/nwslR/nwslR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nwslR/nwslR/actions/workflows/R-CMD-check.yaml)
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

    ## Downloading GitHub repo nwslR/nwslR@adror1/build_first_draft

    ## ── R CMD build ─────────────────────────────────────────────────────────────────
    ##      checking for file ‘/private/var/folders/7f/s955xds17_j5tlf00q1wy6br0000gn/T/RtmpBz79C3/remotesfcea22ef641d/nwslR-nwslR-4f6d528/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/7f/s955xds17_j5tlf00q1wy6br0000gn/T/RtmpBz79C3/remotesfcea22ef641d/nwslR-nwslR-4f6d528/DESCRIPTION’
    ##   ─  preparing ‘nwslR’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##    Omitted ‘LazyData’ from DESCRIPTION
    ##   ─  building ‘nwslR_0.1.0.tar.gz’
    ##      
    ## 

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(nwslR)
## basic example code
```

## Available Tables

- `load_player_match_stats()`: Loads player level stats for a given
  match
- `load_player_season_stats()`: Loads player level stats for a
  team/season
- `load_team_match_stats()`: Loads team level stats for a given match
- `load_team_season_stats()`: Loads team level stats for a team/season

# Example::

``` r
#head(load_player_match_stats("angel-city-fc-vs-racing-louisville-fc-2022-09-25"))
```

\`\`\`
