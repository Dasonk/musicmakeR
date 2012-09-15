context("Checking conversions")

test_that("Can convert normal notes",{
    expect_is(convert_to_wave("A4"), "Wave")
    expect_equal(convert_to_wave("A4", 1), sine(440, bit = 16))
})