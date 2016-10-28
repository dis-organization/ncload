context("load")

## TODO: Rename context
## TODO: Add more tests

file <- system.file("extdata", "S2008001.L3m_DAY_CHL_chl_ocx_9km.nc", package = "ncload")


test_that("load works", {
  expect_that(nc_load(file), is_a("NULL"))
  expect_that(sum(grepl("chl_ocx", ls())), equals(1L))
  expect_that(sum(grepl("palette", ls())), equals(1L))
  expect_that(palette, is_a("matrix"))
  expect_that(lon, is_a("array"))

})
