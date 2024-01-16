#' Code
#' 
#' @export
#' @importFrom httr2 request req_perform %>%
code_httr2 <- function() {
	request("https://httpbin.org") %>% req_perform()
}

#' Code
#' 
#' @export
codeypodey_httr2 <- function() {
	request("https://scottchamberlain.info") %>% req_perform()
}
