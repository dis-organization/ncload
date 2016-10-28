#' Load NetCDF file
#'
#' Load all the variables from a NetCDF file into the global environment.
#'
#' See 'nc_read' (not yet implemented) for a less heretical way to do this.
#' @param x path to NetCDF file
#'
#' @return NULL for success, has the side effect of creating variables in the global environment
#' @export
#' @importFrom ncdf4 nc_open ncvar_get
#'
#' @examples
#' x <- system.file("extdata", "S2008001.L3m_DAY_CHL_chl_ocx_9km.nc", package = "ncload")
#' nc_load(x)
nc_load <- function(x) {
  dat <- rancid::NetCDF(x)
  message(sprintf("Creating objects '%s'", paste(dat$variable$name, collapse = "', '")))
  for (i in seq(nrow(dat$variable))) {
    assign(dat$variable$name[i], ncdf4::ncvar_get(ncdf4::nc_open(x), dat$variable$name[i]), envir = .GlobalEnv)
  }
  if (any(dat$dimension$create_dimvar)) {
    for (j in which(dat$dimension$create_dimvar)) {
      assign(dat$dimension$name[j], ncdf4::ncvar_get(ncdf4::nc_open(x), dat$dimension$name[j]), envir = .GlobalEnv)
    }
  }
  invisible(NULL)
}
