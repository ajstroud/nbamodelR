% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSeasonStats.R
\name{getBBRefUrls}
\alias{getBBRefUrls}
\title{Create appropriate Basketball-Reference URLs for a range of seasons}
\usage{
getBBRefUrls(from, to)
}
\arguments{
\item{from}{An integer indicating the first season in the desired range.}

\item{to}{An integer indicating the last season in the desired range.}
}
\value{
A character vector containing the URLs of the Basketball-Reference
season summary webpages for every year from \code{from} to \code{to}, inclusive.
}
\description{
Create appropriate Basketball-Reference URLs for a range of seasons
}
\author{
astroud
}
\keyword{internal}
