#' Shipping Zone and Cost Summary
#'
#' Shows most common zones alongside average shipping cost.
#'
#' @param data A data.frame with `zone` and `shipping_cost`.
#'
#' @return A data.frame with zone counts and average shipping cost.
#' @export
mcommon <- function(data) {

  if (!"zone" %in% colnames(data)) {
    stop("Dataset must contain 'zone' column.")
  }

  if (!"shipping_cost" %in% colnames(data)) {
    stop("Dataset must contain 'shipping_cost' column.")
  }

  # zone counts
  zone_counts <- dplyr::count(data, zone, sort = TRUE)

  # average shipping cost (repeated to align visually)
  avg_cost <- mean(data$shipping_cost, na.rm = TRUE)

  # add column next to zone counts
  zone_counts$avg_shipping_cost <- avg_cost

  zone_counts
}
