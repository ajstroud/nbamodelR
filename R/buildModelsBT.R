#' Create a list of team comparison matrices by fitting Bradley-Terry model
#'
#' @details The first element in the list is the winning probability matrix returned
#' from the buildWinProbMatrixBT function and the second element is the point differential
#' matrix returned from buildPtDiffMatrixBT.
#' Note that for the Bradley-Terry models here we based much of our code
#' off of \url{http://www.stanford.edu/class/stats50/files/5-bradley-terry-complete.r}
#' and \url{http://www.stanford.edu/class/stats50/files/5-bradley-terry.pdf}.
#'
#' @param gameLog A data frame containing individual game records
#' with at least the following columns: \code{H.TEAM}, \code{A.TEAM},
#' \code{H.PTS}, and \code{A.PTS}.
#' @param regularize logical. If \code{TRUE} a regularization term
#' will be added to predict team strength. It is recommended but
#' can be set to \code{FALSE}.
#' @return A list containing a winning probability matrix (winProb) and a point
#' differential matrix (pointDiff) for all possible matchups between teams in
#' the input \code{GameLog}. For each entry in both matrices, the home team is
#' the team listed under the \code{Team} attribute, and the away team is the
#' column name of the entry.
#'
#' @export
#'
#' @seealso \code{\link{buildModelsElo}} to obtain the same list of matrices using
#' FiveThirtyEight's Elo model instead of Bradley-Terry.
#'
#' @examples
#' models2017 = buildModelsBT(gamelogs2017_full)
#'
#' @author kitliu5 and astroud
buildModelsBT = function(gameLog, regularize = T){
  prob = buildWinProbMatrixBT(gameLog, regularize)
  diff = buildPtDiffMatrixBT(gameLog, regularize)
  BTmatrices = list(winProb = prob, pointDiff = diff)
  return(BTmatrices)
}
