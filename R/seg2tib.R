#' Takes a gamete in segment format and returns a tibble with Pop and indiv_index
#'
#' A small helper function.
#' @param s a gamete in segment format
#' @return Returns a tibble with columns `tmp_seg_names`, `start`, and `end`,
#' that show the origin (in `tmp_seg_names`) of segments that start at `start`
#' and end at `end`.
#' @export
#' @examples
#' # first make a segment that has pieces from a few different founders
#'  V <- c(Amy = 0, Bob = 10000, Joe = 30000, Frieda = 40000)
#'  seg2tib(V)
seg2tib <- function(s) {
  L <- length(s)
  tibble(tmp_seg_names = names(s)[-L],
         start = s[-L],
         end = s[-1])
}
