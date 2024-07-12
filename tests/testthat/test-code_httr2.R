test_that("code_httr2", {
  vcr::use_cassette("code_httr2", {
    x <- fxn_httr2()
  })
  expect_s3_class(x, "httr2_response")
})

test_that("codeypodey_httr2", {
  vcr::use_cassette("code_httr2_2", {
    x <- fxn_httr2("https://recology.info")
  })
  expect_s3_class(x, "httr2_response")
})
