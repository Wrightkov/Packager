clean_orders <- function(df) {
  df$date <- as.Date(df$date)
  df$shipping_price <- as.numeric(df$shipping_price)
  df$zone <- as.numeric(df$zone)
  df
}
