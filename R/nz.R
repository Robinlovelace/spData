#' @name nz
#' @aliases new_zealand
#' @title Regions in New Zealand
#'
#' @description 
#' 
#' Polygons representing the 16 regions of New Zealand (2017).
#' See \url{https://en.wikipedia.org/wiki/Regions_of_New_Zealand} for a description of these regions
#' and \url{www.stats.govt.nz} for information on the data source
#' 
#' @format FORMAT:
#' \itemize{
#'     \item{REGC2017_NAME} {Name}
#'     \item{AREA_SQ_KM} {Area}
#'     \item{LAND_AREA_SQ_KM} {Land area}
#'     \item{Shape_Length} {Perimeter length (m)}
#'     \item{Shape_Area} {Area (meters squared)}
#'     \item{geometry} {sfc_MULTIPOLYGON}
#' }
#' 
#' @source \url{www.stats.govt.nz}
#' @docType data
#' @keywords datasets sf
#' 
#' @examples 
#' if (requireNamespace("sf", quietly = TRUE)) {
#'   library(sf)
#'   summary(nz)
#'   plot(nz)
#' }
#' \dontrun{
#' u_nz = paste0("http://www3.stats.govt.nz/digitalboundaries/annual/",
#'   "ESRI_Geodatabase_2017_Digital_Boundaries_Generalised_Clipped.zip")
#' download.file(u_nz, destfile = "nz.zip")
#' unzip("nz.zip")
#' st_layers("2017 Digital Boundaries Generalised Clipped.gdb/")
#' nz = st_read("2017 Digital Boundaries Generalised Clipped.gdb", layer = "REGC2017_GV_Clipped")
#' object.size(nz) / 1000000 # ~15 MB
#' nz = rmapshaper::ms_simplify(nz, keep = 0.001)
#' object.size(nz) / 1000 # 41 KB!
#' nz = nz_orig[1:16, ] # remove areas outside nz territory
#' # Tidy-up
#' unlink("2017 Digital Boundaries Generalised Clipped.gdb/", recursive = TRUE)
#' unlink("nz.zip")
#' }
"nz"
