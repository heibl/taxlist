\name{tv2taxlist}
\alias{tv2taxlist}

\title{Import species lists from Turboveg databases.}
\description{
Importing species lists from Turboveg
\url{https://www.synbiosys.alterra.nl/turboveg/} databases into an object of
class \code{\linkS4class{taxlist}}.
}
\usage{
tv2taxlist(taxlist, tv_home=tv.home())
}
\arguments{
\item{taxlist}{The name of a species list in Turboveg as character value.}
\item{tv_home}{Character value indicating the path to the main Turboveg	folder.}
}
\details{
This function imports species lists using the function
\code{\link[foreign]{read.dbf}}.
When available, also taxon traits will be imported into the output object
(usually the file \code{'ecodbase.dbf'}).
During import of taxon traits, duplicated entries for a same concept will
be discarded as well as entries for non-existing concepts.

By default \code{tv_home} will be set by the function
\code{\link[vegdata]{tv.home}} from the package
\code{\link[=vegdata-package]{vegata}}.

By default, the name of the database will be set as concept view for all
concepts included in the species list.
If this is not correct, consider setting it manually by using the functions
\code{\link{taxon_views}} and \code{\link{add_view}}.
}
\value{
An object of class \code{\linkS4class{taxlist}}.
}
\author{
Miguel Alvarez, \email{kamapu78@gmail.com}
}
\seealso{
\code{\linkS4class{taxlist}}.
}
\examples{
library(taxlist)

## Cyperus data set installed as Turboveg species list
Cyperus <- tv2taxlist("cyperus", file.path(path.package("taxlist"), "tv_data"))

summary(Cyperus)
}
