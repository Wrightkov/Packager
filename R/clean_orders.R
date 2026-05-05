#' Clean Orders Data
#'
#' Standardizes order dataset formats.
#'
#' @param df Data frame of orders
#' @return Cleaned data frame
#' @export
clean_orders <- function(df) {
  df$price <- as.numeric(df$price)
  df$date <- as.Date(df$date)
  df$shipping_price <- as.numeric(df$shipping_price)
  df
}
