\name{tv2taxlist}
\alias{tv2taxlist}

\title{Import species lists from Turboveg databases.}
\description{
Importing species lists from Turboveg databases into an object of class
\code{\linkS4class{taxlist}}.
}
\usage{
tv2taxlist(taxlist, tv_home=tv.home())
}
\arguments{
\item{taxlist}{The name of a species list in Turboveg as character value.}
\item{tv_home}{Character value indicating the path to the main Turboveg	folder.}
}
\details{
This function imports species lists using the function \code{\link{read.dbf}}
from the package \code{foreign}.
If present, also the taxon traits will be imported into the output object
(usually the file \code{ecodbase.dbf} in the respective folder).
During import of \code{ecodbase.dbf} duplicated entries for a same concept will
be discarded as well as entries for non-existing concepts.

By default \code{tv_home} will be set by the function \code{\link{tv.home}} from
the package \code{\link[=vegdata-package]{vegata}}.
Part of the code is extracted from the function \code{\link{tax}}.

Be default, the name of the database sill be set as concept view for all
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
\donttest{
library(taxlist)

## Loading GermanSL 1.3 (http://www.botanik.uni-greifswald.de/2305.html)
GermanSL <- tv2taxlist("GermanSL_1.3", file.path(path.package("taxlist"),
	"tv_data"))
summary(GermanSL, units="Mb")
}
}