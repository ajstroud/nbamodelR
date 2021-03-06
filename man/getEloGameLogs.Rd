% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getEloGameLogs.R
\name{getEloGameLogs}
\alias{getEloGameLogs}
\title{Obtain NBA game logs from FiveThirtyEight's repository}
\usage{
getEloGameLogs(from = NULL, to = from)
}
\arguments{
\item{from}{An integer denoting the first season from which to search.
As NBA seasons span two calendar years, use the later of the two years
as the passed-in parameter (e.g. for the 2017-18 season, use 2018).}

\item{to}{An integer denoting the last season to include in the search.}
}
\value{
A data frame with game logs for every NBA season between \code{from}
and \code{to}, inclusive.
}
\description{
Gather game logs from a specified range of seasons. Game logs will include
FiveThirtyEight's pre- and post-game elo ratings, as well as elo-projected
win probabilities.
}
\details{
FiveThirtyEight makes their data available at
\url{https://github.com/fivethirtyeight/data/tree/master/nba-carmelo}. Note that
the entire FiveThirtyEight-provided csv is downloaded each time this function
is called, so unlike for \code{\link{getGameLogs}}, choosing a smaller
range of seasons will not result in a shorter runtime. Also, FiveThirtyEight's
dataset contains ABA games as well as NBA games.
}
\examples{
\dontrun{
getEloGameLogs()
getEloGameLogs(2017)
getEloGameLogs(2000, 2017)
}

}
\seealso{
\code{\link{getGameLogs}} for gathering game logs with more
comprehensive statistics, and \code{\link{getSeasonStats}} for gathering
team statistics aggregated by seasons, or \code{\link{buildModelsElo}} for
evaluating team strength using these gamelogs.
}
\author{
astroud
}
