mcommon <- function(data) {

  if (!"zone" %in% colnames(data)) {
    stop("Dataset must contain 'zone' column.")
  }
  if (!"shipping_cost" %in% colnames(data)) {
    stop("Dataset must contain 'shipping_cost' column.")
  }

  #counts
  zone_counts <- dplyr::count(data, zone, sort = TRUE)
  avg_cost <- mean(data$shipping_cost, na.rm = TRUE)
  zone_counts$avg_shipping_cost <- avg_cost
  zone_counts
}
