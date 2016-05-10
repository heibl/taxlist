# TODO:   Add a new view to a taxlist object
# 
# Author: Miguel Alvarez
################################################################################

add_view <- function(taxlist, View, ...) {
	if(class(taxlist) != "taxlist")
		stop("'taxlist' must be an object of class taxlist")
    if(class(View) != "integer") View <- as.integer(View)
    newView <- list(View=View, ...)
    for(i in colnames(taxlist@conceptViews)[!colnames(taxlist@conceptViews) %in%
					names(newView)]) {
		newView[[i]] <- ""
	}
	newView <- as.data.frame(newView, stringsAsFactors=FALSE)[,
			colnames(taxlist@conceptViews)]
	newView <- do.call(rbind, list(taxlist@conceptViews, newView))
	rownames(newView) <- paste(newView$View)
	taxon_views(taxlist) <- newView
	return(taxlist)
}