#' Draw samples from a given distribution
#'
#' @param n A positive integer.
#' @param distribution A distribution ("normal", "poisson", "binomial")
#' @param ... Additional parameters for the chosen distribution
#'
#' @return A dsamplr object
#' @export
#'
#' @examples
#' dsamplr(100, "normal")
#' dsamplr(5000, "poisson", lambda=10)
dsamplr <- function(n, distribution, ...){
  if (any(n <= 0))  stop("Need a positive number of samples")
  distribution <- match.arg(distribution, choices = c("normal", "poisson", "binomial"))
  value = list(sample = switch(distribution, "normal" = rnorm(n, ...), "poisson" = rpois(n, ...), "binomial" = rbinom(n, ...)))
  value$distribution <- distribution
  class(value) <- "dsamplr"
  return(value)
}
