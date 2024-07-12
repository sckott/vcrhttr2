#' Use httr2 to do a GET request
#'
#' @export
#' @importFrom httr2 request req_perform %>%
#' @param some_url (character) a url
fxn_httr2 <- function(some_url = "http://httpbin.org/") {
  request(some_url) %>% req_perform()
}
