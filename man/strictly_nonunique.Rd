% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal-funs.R
\name{strictly_nonunique}
\alias{strictly_nonunique}
\title{Return only those rows where rows per group is > 1.}
\usage{
strictly_nonunique(x, cols = names(x))
}
\arguments{
\item{x}{A \code{data.table}.}

\item{cols}{Character vector of column names (from \code{x}).}
}
\value{
A \code{data.table}.
}
\description{
For internal use only. It returns only rows corresponding to 
those groups where the number of rows > 1L. This is equivalent to doing 
\code{DT[, if (.N>1L) .SD, by=c(...)]}.
}
\examples{
\dontrun{
require(data.table)
dt <- data.table(x=c(1,1,1,2,2), y=c(3,3,4,5,6))
strictly_nonunique(dt) # Only 1,3 occurs more than once
strictly_nonunique(dt, "x") # all values occur more than once
}
}

