#' Calculate Shipping Cost
#'
#' @param weight Numeric weight
#' @param zone Shipping zone (1–8)
#' @return Shipping cost
#' @export
calc_shipping <- function(weight, zone) {
  base <- 3.50
  extra <- weight * 0.5
  zone_fee <- ifelse(zone > 5, 2, 0)
  base + extra + zone_fee
}