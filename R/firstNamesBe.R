# .onLoad <- function(libname, pkgname) {
#   data("prenomsBe2013", package=pkgname, envir=parent.env(environment()))
# }

data(dataArray, envir=environment())

#' Belgian First Names Count of 2013
#' 
#' It covers the first names of 10.573.205 people living in Belgium in 2013
#' (the Belgian population was of 11.116.243 in 2012).
#' 
#' @name dataArray
#' @docType data
#' @source
#' http://statbel.fgov.be/fr/modules/publications/statistiques/population/prenoms_de_la_population_totale.jsp
#' @examples
#' \dontrun{
#' data(dataArray)
#' str(dataArray)
#' }
NULL
