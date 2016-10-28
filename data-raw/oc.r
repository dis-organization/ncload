#The files can be requested directly with a getfile request like:
#http://oceancolor.gsfc.nasa.gov/cgi/l3/S2008001.L3b_DAY_CHL.nc?sub=bin
#http://oceandata.sci.gsfc.nasa.gov/cgi/getfile/S2008001.L3m_DAY_CHL_chl_ocx_9km.nc
  f <- "http://oceandata.sci.gsfc.nasa.gov/cgi/getfile/S2008001.L3m_DAY_CHL_chl_ocx_9km.nc"
  download.file(f, file.path("inst", "extdata", basename(f)), mode = "wb")
#x <- system.file("extdata", "S2008001.L3m_DAY_CHL_chl_ocx_9km.nc", package = "ncload")
