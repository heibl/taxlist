taxlist 0.1.6
=============

### New Features

* New methods `as.phylo` and `as.multiPhylo` for plotting parent-child relations in dendrograms

### Improvements
* A new option `style="knitr"` for function `print_name` (See [this issue](https://stackoverflow.com/questions/51092103/formatted-scientific-names-from-r-to-latex-using-sweave-or-knitr)) at **Stack Overflow**.
* In function `backup_object`, the message will be done after successful saving and not before.

### Bugs Fixes
* Function `add_synonym` was not properly working for incomplete entries (missing variables in the replacement values.)
* Function `load_last` was not properly working for values of `file` without mention of subfolder.

taxlist 0.1.5
=============

### New Features

* A **CITATION** file is included in the installation.
* New method `replace_view`.
* New method `print_name` for formatting taxon names to italic style.
* New method `update_name`, for updating information in slot `taxonNames`.
* New method `synonyms` retrieving synonyms for indicated concepts.
* New method `delete_name` for deleting synonyms in `taxlist` objects.
* New method `basionym` for handling basionyms.

### Improvements

* Function `accepted_name` retrieves also information on `Level` (taxonomic rank) and traits (optional in argument `show_traits`).
* Function `summary` for single taxon is displaying the name of the parent taxon (accepted name) and optional a string for the taxon view.
* Function `backup_object` prints a message in the console.
* Related functions will join documentation files.
* Data set `Easplist` adapted to new state of database **SWEA-Dataveg**.
* Function `match_names` counts multiple best matchings and includes a new argument `show_concepts` for displaying the respective accepted names and taxon concept ID.

### Bugs Fixes
* Function `load_last` was not working for single files with suffix, neither for absolute path or paths with underscores.
* Function `summary` for single taxa was not displaying names that are homonyms to the accepted name.
* Re-organized documentation.

taxlist 0.1.4
=============

### New Features

* New function `load_last` to load last backup in an R-session.
* File **inst/ChangeLog** replaced by **NEWS.md**.
* New function `dissect_name` for splitting names into their parts.
* New function `match_names` matching character vectors with names of a `taxlist` object.

### Improvements

* Function `backup_object` is also working with relative paths.

### Bugs Fixes

* Function `add_view` was not adding new columns in the respective slot.
* Function `tv2taxlist` does not modify slot `taxonViews` in prototype.
* Function `load_last` was not working with values of `filename` having underscores.

taxlist 0.1.3
=============

### New Features

* New function: `add_trait`.
* New function: `tax2traits`.

### Improvements

* Argument `level` inserted in function `merge_taxa`.
* Function `clean` also set keys to class `integer`.
* Validation checks for the existence of accepted names in names list.

### Bugs Fixes

* Bug in `add_concept`: wrong assignment of `AcceptedName`.

taxlist 0.1.2
=============

### New Features

* new function `merge_taxa`.

### Improvements

* Argument `ConceptID` in `summary` (`taxlis-method`) can be a character vector matching `TaxonName`.

taxlist 0.1.1
=============

### New Features

* New vignette `taxlist-intro`.

### Improvements

* Package `vegdata` moved from Depends to Imports.
* Function `df2taxlist` adapted to species lists with duplicated names.
* Arguments `keep_parents` and `keep_children` implemented in function `subset`.

taxlist 0.1.0
=============

### New Features

* Released to **CRAN** (https://cran.r-project.org/package=taxlist).

taxlist 0.0.0.9014
==================

### New Features

* New method `as.list`.

### Improvements

* New validation rule: duplicated combinations `TaxonName` and `AuthorName` not allowed in slot `taxonNames`.
* Data **Easplist** modified to fulfil the latter rule.
