context("updateObject")

test_that("bcbioSingleCell", {
    x <- updateObject(bcb)
    expect_s4_class(x, "bcbioSingleCell")
})

test_that("v0.1 update", {
    skip_if_not(hasInternet())
    skip_on_appveyor()
    invalid <- import(
        file = file.path(bcbioSingleCellTestsURL, "bcbioSingleCell_0.1.0.rds")
    )
    valid <- updateObject(invalid)
    expect_s4_class(valid, "bcbioSingleCell")
})
