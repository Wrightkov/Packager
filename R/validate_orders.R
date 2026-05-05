#' Validate Order Data
#'
#' @param df Data frame
#' @return TRUE if valid
#' @export
validate_orders <- function(df) {
  required_cols <- c("order_id", "price", "date","shipping_price")
  all(required_cols %in% colnames(df))
}
