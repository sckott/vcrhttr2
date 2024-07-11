req <- httr2::request("https://www.r-project.org")

test_that("httr2_headers", {
  req_headers <- req %>% httr2::req_headers("Accept" = "application/json")
  vcr::use_cassette("httr2_headers", {
    resp1 <- req_headers %>% httr2::req_perform()
  })

  expect_s3_class(resp1, "httr2_response")
  expect_equal(resp1$method, "GET")
  expect_equal(resp1$request$headers, req_headers$headers)
})

test_that("httr2_post_body", {
  req_body <- req %>% httr2::req_body_json(list(x = 1, y = 2))
  vcr::use_cassette("httr2_post_body", {
    resp2 <- req_body %>% httr2::req_perform()
  })

  expect_s3_class(resp2, "httr2_response")
  expect_equal(resp2$method, "POST")
})

test_that("httr2_patch", {
  req_patch <- req %>% httr2::req_method("PATCH")
  vcr::use_cassette("httr2_patch", {
    resp3 <- req_patch %>% 
      httr2::req_error(is_error = function(resp) FALSE) %>%
      httr2::req_perform()
  })

  expect_s3_class(resp3, "httr2_response")
  expect_equal(resp3$method, "PATCH")
})

test_that("httr2_errors", {
  # httr2 automatically converts HTTP errors into R errors
  # vcr prevents it from happening
  vcr::use_cassette("httr2_errors", {
    resp4 <- httr2::request("https://www.google.com/xxxxxxxx") %>% 
      httr2::req_error(is_error = function(resp) FALSE) %>%
      httr2::req_perform()
  })

  expect_s3_class(resp4, "httr2_response")
  expect_equal(resp4$method, "GET")
})
