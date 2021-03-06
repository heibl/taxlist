# TODO:   Functions for merging and splitting taxa
# 
# Author: Miguel Alvarez
################################################################################

# Merging taxa

# Generic function
setGeneric("merge_taxa",
		function(object, concepts, level, ...)
			standardGeneric("merge_taxa")
)

# Method merging a list of taxon concepts
setMethod("merge_taxa", signature(object="taxlist", concepts="numeric",
				level="missing"),
		function(object, concepts, level, print_output=FALSE, ...) {
			# Tests previous running function
			if(!length(concepts) > 1)
				stop("Argument 'concepts' must have a length > 1")
			if(any(!concepts %in% object@taxonRelations$TaxonConceptID))
				stop("All values in 'concepts' should be included as concepts in 'object'")
			# Merging concepts
			object@taxonNames[object@taxonNames$TaxonConceptID %in% concepts, "TaxonConceptID"] <- concepts[1]
			object@taxonRelations <- object@taxonRelations[
					!object@taxonRelations$TaxonConceptID %in% concepts[-1],]
			object <- clean(object)
			# Print result#
			if(print_output) {
				summary(object, concepts[1])
			}
			# Return modified object
			return(object)
		}
)

# Method merging up to an indicated taxonomic level
setMethod("merge_taxa", signature(object="taxlist", concepts="missing",
				level="character"),
		function(object, concepts, level, ...) {
			if(!level %in% paste(levels(object)))
				stop("The requested 'level' is not included in 'object'")
			for(i in paste(levels(object))[1:(which(paste(levels(object)) ==
									level) - 1)]) {
				DEL <- object@taxonRelations[
						paste(object@taxonRelations$Level) == i,
						"TaxonConceptID"]
				REPL <- object@taxonRelations[
						paste(object@taxonRelations$Level) == i, "Parent"]
				object@taxonNames[object@taxonNames$TaxonConceptID %in% DEL,
						"TaxonConceptID"] <- REPL[
								match(object@taxonNames[
												object@taxonNames$TaxonConceptID %in%
														DEL, "TaxonConceptID"],
										DEL)]
				object@taxonRelations <- object@taxonRelations[
						!object@taxonRelations$TaxonConceptID %in% DEL,]
			}
		return(clean(object))
		}
)

# Split taxa may follows
