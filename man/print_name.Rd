\name{print_name}
\docType{methods}
\alias{print_name}
\alias{print_name,taxlist,numeric-method}

\title{Format Usage Names for Publications}
\description{
When writing on bio-diversity, usage names could be automatically inserted in
documents including the typical italic format for different elements of a
scientific name.
The function \code{'print_name'} can be applied either in markdown documents or
for graphics.
}
\usage{
\S4method{print_name}{taxlist,numeric}(object, id, concept=TRUE, second_mention=FALSE,
	include_author=TRUE, secundum, style="markdown", ...)
}
\arguments{
\item{object}{An object of class \code{\linkS4class{taxlist}}.}
\item{id}{Integer containing either a concept or a name ID.}
\item{concept}{Logical value, whether \code{'id'} corresponds to a concept ID or
	a taxon usage name ID.}
\item{second_mention}{Logical value, whether the genus name should be
	abbreviated or not.}
\item{include_author}{Logical value, whether authors of the name should be
	mentioned or not.}
\item{secundum}{Character value indicating the column in slot
	\code{'taxonViews'} that will be mentioned as \emph{secundum}
	(according to).}
\item{style}{Character value indicating the alternative format for italics (at
	the moment only markdown and html implemented).}
\item{...}{Further arguments passed among methods.}
}
\details{
In \bold{Rmarkdown} documents use \code{`r I(print_name(Easplist, 206))`} for
inserting a formatted a species name.
}
\value{
A character value including format to italic font.
}
\seealso{
\code{\link[ape]{mixedFontLabel}}.
}
\author{
Miguel Alvarez (\email{kamapu78@gmail.com}).
}
\examples{
## Example using Rmarkdown
library(taxlist)
data(Easplist)
summary(Easplist, 363, secundum="secundum")

## Empty plot
plot(NA, xlim=c(0,5), ylim=c(7,1), bty="n", xaxt="n", xlab="", ylab="options")

## Accepted name with author
text(0, 1, labels=print_name(Easplist, 363, style="expression"), pos=4)

## Including taxon view
text(0, 2, labels=print_name(Easplist, 363, style="expression",
	secundum="secundum"), pos=4)

## Second mention in text
text(0, 3, labels=print_name(Easplist, 363, style="expression",
	second_mention=TRUE), pos=4)

## Using synonym
text(0, 4, labels=print_name(Easplist, 50037, style="expression",
	concept=FALSE), pos=4)

## Markdown style
text(0, 5, labels=print_name(Easplist, 363, style="markdown"), pos=4)

## HTML style
text(0, 6, labels=print_name(Easplist, 363, style="html"), pos=4)

## LaTeX style for knitr
text(0, 7, labels=print_name(Easplist, 363, style="knitr"), pos=4)
}
\keyword{methods}
