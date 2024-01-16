test_that("code_httr2", {
  vcr::use_cassette("code_httr2", {
    x <- code_httr2()
  })
  expect_s3_class(x, "httr2_response")
})

test_that("codeypodey_httr2", {
  vcr::use_cassette("codepodey_httr2", {
    x <- codeypodey_httr2()
  })
  expect_s3_class(x, "httr2_response")
})
