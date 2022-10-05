#' Extracts Xi Optics from point data
#'
#' @param filename a csv containing x,y coordinates
#' @param x column number with x coordinates
#' @param y column number with y coordinates
#' @param eps EPS parameter for clustering
#' @param minPts minPts parameter for clustering
#' @param Xi Xi parameter for cluster extraction
#'
#' @return a dataframe with the csv content and the cluster ID added as column
#' @export
#'

OpticsXtractXi <- function (filename, x, y, eps, minPts, Xi) {

  EFlickr = read.csv(filename)

  points <- as.matrix(EFlickr[,x:y])

  optics <- dbscan::optics(points, eps=eps, minPts=minPts)
  optics <- dbscan::extractXi(optics, xi = Xi)
  plot(points, col = optics$cluster+1)
  merged_optics <- merge(EFlickr, optics$cluster, by=0)
  merged_optics <- plyr::rename(merged_optics, c("y"="opticsXi_cl"))

  return(merged_optics)
}
