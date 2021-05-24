#' Gets the mean of a random sample
#'
#' @param vec The vector of numeric data to sample
#' @param n The size of the sample
#'
#' @return A double representing the mean of a random sample from the provided data
#'
#' @import dplyr
#' @import purrr
#'
#' @export
sample_mean <- function(vec,n) {
  mean(sample(vec,size=n, replace=TRUE))
}
