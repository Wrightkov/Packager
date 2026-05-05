
plot_heat <- function(orders) {

  # Count orders per zone
  agg <- aggregate(order_id ~ zone, data = orders, FUN = length)
  colnames(agg)[2] <- "orders"

  # Sort by zone
  agg <- agg[order(agg$zone), ]

  # Ensure zone is plotted in correct order
  agg$zone <- factor(agg$zone, levels = agg$zone)

  ggplot2::ggplot(agg, ggplot2::aes(x = zone, y = orders)) +
    ggplot2::geom_col(fill = "tomato") +
    ggplot2::labs(
      title = "Order Heatmap by Zone (Sorted)",
      x = "Zone",
      y = "Number of Orders"
    ) +
    ggplot2::theme_minimal()
}
