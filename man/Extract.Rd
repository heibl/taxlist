\name{Extract}
\docType{methods}
\alias{Extract}
\alias{[}
\alias{[,taxlist-method}
\alias{[<-}
\alias{[<-,taxlist-method}
\alias{$,taxlist-method}
\alias{$<-}
\alias{$<-,taxlist-method}

\title{Extract or Replace Parts of taxlist Objects}
\description{
Quick access to slots \code{'taxonTraits'} and \code{'taxonRelations'} within
\code{\linkS4class{taxlist}} objects.
}
\usage{
\S4method{$}{taxlist}(x, name)

\S4method{[}{taxlist}(x, i, j, ..., slot="relations", drop=FALSE)
}
\arguments{
\item{x}{Object of class \code{\linkS4class{taxlist}}.}
\item{slot}{To which slot will be applied the extraction or replacement.}
\item{...}{Further arguments passed to or from other methods.}
\item{name}{A name to access.}
\item{i,j}{Indices for access.}
\item{drop}{A logical value passed to \code{\link[base]{Extract}}.}
}
\details{
While the method \code{'$'} automatically recognizes the slot queried, provided
that there is no shared column names, in the method \code{'['} you may specify
it by the argument \code{'slot'} (default for \code{'taxonRelations'}).
The argument \code{'slot'} allows partial matchings.

In the method \code{'['}, the first index is referred to the rows in slot
\code{'taxonRelations'}, while the second index indicate the columns in either
\code{'taxonRelations'} or \code{'taxonTraits'}.

The respective replacement methods \code{'$<-'} and \code{'[<-'} are also
implemented.
}
\value{
The method \code{'$'} retrieves a vector, while \code{'['} retrieves a subset
of the input \code{\linkS4class{taxlist}} object.
}
\author{
Miguel Alvarez, \email{kamapu78@gmail.com}.
}
\seealso{
\code{\linkS4class{taxlist}}, \code{\link[taxlist]{subset}}.
}
\examples{
library(taxlist)
data(Easplist)

## Statistics on life forms
summary(as.factor(Easplist$lf_behn_2018))

## First ten concepts in this list
summary(Easplist[1:10,], "all")
}
\keyword{methods}
