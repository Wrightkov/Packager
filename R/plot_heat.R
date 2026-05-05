plot_heat <- function(orders) {
  agg <- aggregate(order_id ~ zone, data = orders, FUN = length)
  colnames(agg)[2] <- "orders"
#sort by zone for graph
  agg <- agg[order(agg$zone), ]

#sort by zone order
  agg$zone <- factor(agg$zone, levels = agg$zone)

  ggplot2::ggplot(agg, ggplot2::aes(x = zone, y = orders)) +
    ggplot2::geom_col(fill = "red") +
    ggplot2::labs(
      title = "# of Orders Heatmap",
      x = "Zone",
      y = "# of Orders"
    ) +
    ggplot2::theme_minimal()
}
