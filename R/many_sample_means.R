#' Gets the means of many samples
#'
#' @param vec The vector of numeric data to sample
#' @param n The size of the sample
#' @param reps The number of samples to take
#'
#' @return A vector of double representing the means of each random sample from
#' the provided data
#'
#' @import dplyr
#' @import purrr
#'
#' @export
many_sample_means <- function(vec, n, reps) {
  output <- c()
  for(i in 1:reps) {
    output <- append(output, sample_mean(vec,n))
  }
  return(output)
}
