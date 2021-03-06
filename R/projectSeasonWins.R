#' Estimate season win totals for each team in a win-probability matrix
#'
#' @details Note that as currently implemented, this function does not
#' account for the differing number of games played against each team,
#' but does take into account an even split between home and road games.
#' This function also assumes an 82-game season as is the standard in the
#' modern NBA, so if the probability matrix is generated on a season that
#' had fewer games, this function will extrapolate out to a full 82.
#'
#' @param winProbs A probability matrix with each entry representing the
#' probability of the team in that row defeating the team in that
#' column. It can be generated by \code{buildWinProbMatrixBT} or
#' \code{buildWinProbMatrixElo}.
#' @return A named numeric vector where each entry's name is a team and
#' the entry is their projected number of wins.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' projectSeasonWins(buildWinProbMatrixBT(gamelogs2017_full))
#' projectSeasonWins(buildWinProbMatrixElo(eloLogs2017))
#' }
#'
#' @author astroud
projectSeasonWins = function(winProbs) {
  teams = as.character(winProbs$Team)

  pWins = vapply(teams, function(x) {
    mean(unlist(c(winProbs[winProbs$Team == x,-1], 1 - winProbs[,x]))) * 82
  }, 0.1)

  sort(pWins, decreasing = FALSE)
}
