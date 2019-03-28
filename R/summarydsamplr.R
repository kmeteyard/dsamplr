#' Summary method for the S3 dsamplr object
#'
#' @param object A dsamplr object. Created by dsamplr function.
#' @param ... Included for good practice in building generics.
#'
#' @return Summarises the number of samples and distribution.
#' @export
#'
summary.dsamplr <- function(object, ...) {
  stopifnot(inherits(object, "dsamplr"))
  cat("\t\n",
      sprintf("Numbers of samples: %s\n", length(object$sample)),
      sprintf("Distribution: %s\n", object$distribution))
}
