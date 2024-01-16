#' Code w/ port
#' 
#' @export
code <- function() {
	httr::GET("http://localhost:9200")
}

#' Code w/o port
#' 
#' @export
codeypodey <- function() {
	httr::GET("https://scottchamberlain.info")
}
