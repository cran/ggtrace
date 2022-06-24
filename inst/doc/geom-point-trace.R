## -----------------------------------------------------------------------------
library(ggplot2)
library(ggtrace)

p <- ggplot(
  clusters,
  aes(UMAP_1, UMAP_2, fill = cluster)
) + 
  theme_minimal()

p +
  geom_point_trace(
    color    = "black",
    size     = 1,
    linetype = 1,
    alpha    = 1
  )

## -----------------------------------------------------------------------------
ggplot(
  clusters,
  aes(UMAP_1, UMAP_2, color = cluster)
) +
  geom_point_trace(
    fill   = "black",
    stroke = 2
  ) +
  theme_minimal()

## -----------------------------------------------------------------------------
p <- ggplot(
  clusters,
  aes(UMAP_1, UMAP_2, fill = signal, group = cluster)
) +
  theme_minimal()

p +
  geom_point_trace(stroke = 0.5) +
  scale_fill_gradient(low = "white", high = "red")

## -----------------------------------------------------------------------------
p <- ggplot(
  clusters,
  aes(UMAP_1, UMAP_2, color = sample)
) +
  theme_minimal()

p +
  geom_point_trace(fill = "white") +
  scale_color_manual(values = c("red", "#0072B2"))

## -----------------------------------------------------------------------------
p <- ggplot(
  clusters,
  aes(UMAP_1, UMAP_2, fill = cluster)
) +
  theme_minimal()

p +
  geom_point_trace(trace_position = "bottom")

## -----------------------------------------------------------------------------
p +
  geom_point_trace(trace_position = signal < 0)

## -----------------------------------------------------------------------------
p +
  geom_point_trace(
    trace_position    = signal < 0,
    background_params = list(color = NA, fill = "grey85")
  )

## -----------------------------------------------------------------------------
p +
  geom_point_trace(
    trace_position    = signal < 0,
    color             = NA,
    background_params = list(color = NA, fill = "grey85")
  )

