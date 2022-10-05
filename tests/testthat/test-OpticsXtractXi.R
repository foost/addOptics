test_that("input csv has coordinates in columns 7 and 8", {
  EFlickr = read.csv("LICENSE.md")
  expect_error(OpticsExtractXi(filename))
})
