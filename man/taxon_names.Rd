\name{taxon_names}
\docType{methods}
\alias{taxon_names}
\alias{taxon_names,taxlist-method}
\alias{taxon_names<-}
\alias{taxon_names<-,taxlist,data.frame-method}
\alias{add_synonym}
\alias{add_synonym,taxlist-method}
\alias{update_name}
\alias{update_name,taxlist,numeric-method}
\alias{delete_name}
\alias{delete_name,taxlist,numeric-method}

\title{Handle Information on Taxon Usage Names}
\description{
The slot \code{'taxonNames'} in \code{\linkS4class{taxlist}} objects contains
taxon usage names for the respective taxon.
These functions assist on the access and modification of entries for names.
}
\usage{
\S4method{taxon_names}{taxlist}(taxlist, ...)

taxon_names(taxlist) <- value

\S4method{add_synonym}{taxlist}(taxlist, ConceptID, TaxonName, AuthorName, ...)

\S4method{update_name}{taxlist,numeric}(taxlist, UsageID, ...)

\S4method{delete_name}{taxlist,numeric}(taxlist, UsageID, ...)
}
\arguments{
\item{taxlist}{A \code{\linkS4class{taxlist}} object to be modified.}
\item{value}{A data frame used as new slot \code{'taxonNames'} in
	\code{'taxlist'}.}
\item{ConceptID}{Numeric vector indicating the concept ID to which the synonyms
	will be added.}
\item{TaxonName,AuthorName}{Character values used for the new names (synonyms).}
\item{UsageID}{Numeric vector indicating the taxon usage IDs to be updated.}
\item{...}{Further arguments passed among methods. In \code{'update_name'} are
	vectors including the variables to be updated for the respective taxon usage
	ID.}
}
\details{
The replacement method \code{'taxon_names<-'} is a quick alternative to include
names in empty \code{\linkS4class{taxlist}} objects.

The function \code{'add_synonym'} works only for adding names to existing taxon
concepts.
For adding new taxon concepts as well you should use
\code{\link{add_concept}}.
}
\value{
A data frame or, in the case of the replacement method, a
\code{\linkS4class{taxlist}} object with modified slot \code{'taxonNames'}.
}
\author{
Miguel Alvarez, \email{kamapu78@gmail.com}.
}
\seealso{
\code{\linkS4class{taxlist}}.
}
\examples{
library(taxlist)
data(Easplist)

## Display of slot 'taxonNames'
Euclea <- subset(Easplist, charmatch("Euclea", TaxonName), slot="names",
	keep_children=TRUE)
summary(Euclea)
taxon_names(Euclea)

## Insert a synonym to Diospyros scabra
summary(Easplist, "Diospyros scabra")
Easplist <- add_synonym(Easplist, 51793, TaxonName="Maba scabra",
	AuthorName="Chiov.")
summary(Easplist, "Diospyros scabra")

## Delete a synonym of Launaea cornuta
summary(Easplist, "Launaea cornuta")
Easplist <- delete_name(Easplist, 53821)
summary(Easplist, "Launaea cornuta")
}
\keyword{methods}
