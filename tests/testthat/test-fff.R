test_that("code_httr2", {
    vcr::use_cassette("httr2_noredirect", {
        w <- request("https://scottchamberlain.info") %>% req_perform()
    }, preserve_exact_body_bytes = TRUE)
    expect_s3_class(w, "httr2_response")

    vcr::use_cassette("httr2_yesredirect", {
        ww <- request("https://www.google.com") %>% req_perform()
    })
    expect_s3_class(ww, "httr2_response")
})

library(httr)

test_that("code_httr2", {
    vcr::use_cassette("httr_noredirect", {
        z <- GET("https://scottchamberlain.info")
    })
    expect_s3_class(z, "response")

    vcr::use_cassette("httr_yesredirect", {
        zz <- GET("https://www.google.com")
    })
    expect_s3_class(zz, "response")
})
