test_that("code", {
  vcr::use_cassette("code", {
    x <- code()
  })
  expect_s3_class(x, "response")
})

test_that("codeypodey", {
  vcr::use_cassette("codepodey", {
    x <- codeypodey()
  })
  expect_s3_class(x, "response")
})
