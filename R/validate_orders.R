validate_orders <- function(df) {
  required_cols <- c("date","shipping_price", "zone")
  all(required_cols %in% colnames(df))
}
