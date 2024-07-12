#' Use httr to do a GET request
#'
#' @export
#' @importFrom httr GET
#' @param some_url (character) a url
fxn_httr <- function(some_url = "http://httpbin.org/") {
  httr::GET(some_url)
}
