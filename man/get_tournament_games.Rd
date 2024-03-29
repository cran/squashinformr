% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_tournament_.R
\name{get_tournament_games}
\alias{get_tournament_games}
\title{Get a tournament's games from SquashInfo}
\usage{
get_tournament_games(tournament = NULL, year = NULL, world_tour = NULL)
}
\arguments{
\item{tournament}{character string of name of the tournament. Partial tournament names are matched via regular expressions.}

\item{year}{integer indicating year of competition. Must be 2022, 2022, or NULL if querying results for both years.}

\item{world_tour}{logical indicating whether to only return PSA World Tour tournaments.}
}
\value{
Tibble containing the tournament name, competition category, tournament date, round, match number, game number, player 1, player 2, the game winner, player 1's score, player 2's score, player 1's seed, player 2's seed, player 1's nationality, player 2's nationality.
}
\description{
Given a tournament name or a year, \code{get_tournament_games()} returns match data for PSA World Tour tournaments and other events.
}
\note{
This function only returns game data from tournaments in 2021 and 2022, as any other data are not available to non-premium members on SquashInfo. Additionally, events that do not use a single elimination format are not included in the results (e.g. Karakal Premier League).
}
\examples{
## Return game data for 2022's Allam British Open.
\donttest{get_tournament_games("Allam British Open", year = 2022, world_tour = TRUE)}

## Return game data for all PSA World Tour tournaments in 2022
\donttest{get_tournament_games(year = 2022, world_tour = TRUE)}


}
\references{
\url{http://www.squashinfo.com/results}
}
