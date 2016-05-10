\name{taxon_relations}
\docType{methods}
\alias{taxon_relations}
\alias{taxon_relations,data.frame-method}
\alias{taxon_relations,taxlist-method}
\alias{taxon_relations<-}
\alias{taxon_relations<-,taxlist,data.frame-method}

\title{Retrieve or Assign Slot \dQuote{taxonRelations} to a \dQuote{taxlist}
Object}
\usage{
\S4method{taxon_relations}{data.frame}(taxlist, ...)
\S4method{taxon_relations}{taxlist}(taxlist, ...)
taxon_relations(taxlist) <- value
}
\arguments{
	\item{taxlist}{Object of class \code{data.frame} or \code{taxlist}.}
	\item{value}{Object of class \code{data.frame} to set as slot
		\code{taxonRelations}.}
	\item{...}{Further arguments passed to or from other methods.}
}
\description{
The function \code{taxon_relations} retrieves or assigns the slot
\code{taxonRelations} to objects of the class
\code{\link[=taxlist-class]{taxlist}}.

The \code{data.frame} method can be used to generate the \code{taxonRelations}
slot from a data frame similar to \code{\link{Easplist}} or from a slot
\code{taxonNames} in a \code{taxlist} object.
}
\author{
Miguel Alvarez, \email{malvarez@uni-bonn.de}
}
\examples{
library(taxlist)
data(Easplist)

## Subset for the genus Euclea and display of slot 'taxonRelations'
Euclea <- subset(Easplist, Traits=GENUS == "Euclea")
summary(Euclea, "all")
taxon_relations(Euclea)
}
\keyword{methods}