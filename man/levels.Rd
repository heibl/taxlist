\name{levels}
\docType{methods}
\alias{levels}
\alias{levels,factor-method}
\alias{levels,taxlist-method}
\alias{levels<-}
\alias{levels<-,taxlist,character-method}

\title{Set Hierarchical Levels in 'taxlist' Objects}
\description{
Names of levels and its hierarchical sequence (upwards).
}
\usage{
\S4method{levels}{factor}(x, ...)

\S4method{levels}{taxlist}(x, ...)

levels(x) <- value
}
\arguments{
\item{x}{Either a factor or a \code{\link[=taxlist-class]{taxlist}} object.}
\item{value}{Character vector with the name and the upwards sequence of levels.}
\item{...}{Additional arguments passed from or to other methods.}
}
\details{
Taxonomic levels will be handled as factors in the taxlist object.
}
\examples{
## Add example for this function
}