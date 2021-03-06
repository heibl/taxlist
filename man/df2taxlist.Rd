\name{df2taxlist}
\docType{methods}
\alias{df2taxlist}
\alias{df2taxlist,data.frame,logical-method}
\alias{df2taxlist,data.frame,missing-method}
\alias{df2taxlist,character,missing-method}

\title{Convert Data Frames into taxlist Objects}
\description{
Taxon lists may be provided in data frame format, which will be converted to a
\code{\linkS4class{taxlist}} object.
}
\usage{
\S4method{df2taxlist}{data.frame,logical}(x, AcceptedName, ...)

\S4method{df2taxlist}{data.frame,missing}(x, AcceptedName, ...)

\S4method{df2taxlist}{character,missing}(x, AcceptedName, ...)

}
\arguments{
\item{x}{A data frame or a character vector with taxon names.}
\item{AcceptedName}{A logical vector indicating accepted names with value
	\code{TRUE}.}
\item{...}{Additional vectors to be added as columns in slot
	\code{'taxonNames'}.}
}
\details{
In the method \code{'data.frame'}, the input data frame must have following
columns:
\describe{
	\item{TaxonUsageID}{Numeric code for the name.}
	\item{TaxonConceptID}{Numeric code for the concept.}
	\item{TaxonName}{Full name (usage), excluding author name.}
	\item{AuthorName}{Author of the combination (taxon name).}
}

If the argument \code{'AcceptedName'} is missing, all names will be assumed as
accepted names.
In the alternative \code{'character'} method, author names have to be added as
additional vectors.

Be aware that the resulting object misses any information on taxon views,
basionyms, parent concepts, hierarchical levels and taxon traits.
All those elements can be added \emph{a posteriori} by further functions
provided in this package.
}
\value{
A \code{\linkS4class{taxlist} object}.
}
\author{
Miguel Alvarez, \email{kamapu78@gmail.com}.
}
\examples{
library(taxlist)

## Read the table with names of Cyperus species
Cyperus <- read.csv(file.path(path.package("taxlist"), "cyperus", "names.csv"),
	stringsAsFactors=FALSE)
head(Cyperus)

## Convert to 'taxlist' object
Cyperus <- df2taxlist(Cyperus, AcceptedName=!Cyperus$SYNONYM)
summary(Cyperus)

## Create a 'taxlist' object from character vectors
Plants <- df2taxlist(c("Triticum aestivum","Zea mays"), AuthorName="L.")
summary(Plants, "all")
}
\keyword{methods}
