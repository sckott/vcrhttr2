test_that("code", {
  vcr::use_cassette("code_httr", {
    x <- fxn_httr()
  })
  expect_s3_class(x, "response")
})

test_that("codeypodey", {
  vcr::use_cassette("code_httr_2", {
    x <- fxn_httr("https://recology.info")
  })
  expect_s3_class(x, "response")
})
