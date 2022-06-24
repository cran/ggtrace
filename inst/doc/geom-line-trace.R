## -----------------------------------------------------------------------------
library(ggplot2)
library(ggtrace)

p <- ggplot(
  stocks,
  aes(day, value, fill = name)
) +
  theme_minimal()

p +
  geom_line_trace(
    color    = "black",
    size     = 1,
    stroke   = 0.5,
    linetype = 1,
    alpha    = 1
  )

## -----------------------------------------------------------------------------
p <- ggplot(
  stocks,
  aes(day, value, color = name)
) +
  theme_minimal()

p +
  geom_line_trace(stroke = 1)

## -----------------------------------------------------------------------------
clrs <- c(
  CAC  = "#E69F00",
  DAX  = "#0072B2",
  FTSE = "#009E73",
  SMI  = "#56B4E9"
)

p +
  geom_line_trace(stroke = 1) +
  scale_color_manual(values = clrs)

## -----------------------------------------------------------------------------
p <- ggplot(
  stocks,
  aes(day, value, color = name)
) +
  theme_minimal()

p +
  geom_line_trace(
    trace_position = day > 1500,
    stroke         = 1
  )

## -----------------------------------------------------------------------------
p +
  geom_line_trace(
    trace_position    = day < 500 | value > 4000,
    stroke            = 1,
    background_params = list(color = NA, fill = "grey75")
  )

## -----------------------------------------------------------------------------
p +
  geom_line_trace(
    trace_position    = grepl("^[A-Z]A", name),
    stroke            = 1,
    background_params = list(color = NA, linetype = 2)
  )

## -----------------------------------------------------------------------------
p <- ggplot(
  stocks,
  aes(day, value, fill = name)
) +
  theme_minimal()

p +
  geom_line_trace(
    trace_position    = grepl("^[A-Z]A", name),
    color             = NA,
    background_params = list(fill = "grey75")
  )

