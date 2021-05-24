#' Gets the means of many random samples of differing sizes
#'
#' @param vec The vector of numeric data to sample
#' @param reps The number of samples to take at each size
#' @param ns A vector of sizes for each sample to be taken at
#'
#' @return A vector of doubles representing the mean of random sample at each
#' size from the provided data
#'
#' @import dplyr
#' @import purrr
#'
#' @export
sample_means_ns <- function(vec, reps, ns){
  sample_mean <- c()
  n <- c()
  for(j in ns){
    sample_mean <- append(sample_mean, many_sample_means(vec, j, reps))
    n <- append(n, rep(j, reps))
  }
  return(tibble(sample_mean,n))

}
