#' Code w/ port
#' 
#' @export
#' @importFrom httr2 request req_perform %>%
code_httr2 <- function() {
	request("http://localhost:9200") %>% req_perform()
}

#' Code w/o port
#' 
#' @export
codeypodey_httr2 <- function() {
	request("https://scottchamberlain.info") %>% req_perform()
}
