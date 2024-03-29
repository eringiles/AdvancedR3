#' Calculate basic descriptive stats of each metabolite.
#'
#' @param data lipidomics dataset
#'
#' @return A data.frame/tibble.
#'
descriptive_stats <- function(data) {
  data %>%
    dplyr::group_by(metabolite) %>%
    dplyr::summarise(dplyr::across(value, list(mean = mean, sd = sd))) %>%
    dplyr::mutate(dplyr::across(
      tidyselect::where(is.numeric), ~ round(.x, digits = 1)
    ))
}

#' Plot for basic distribution of metabolite data.
#'
#' @param data lipidomics dataset
#'
#' @return A ggplot2 plot object.
#'
plot_distributions <- function(data) {
  data %>%
    ggplot2::ggplot(ggplot2::aes(x = value)) +
    ggplot2::geom_histogram() +
    ggplot2::facet_wrap(ggplot2::vars(metabolite), scales = "free")
}


#' Convert a column's character values to snakecase format.
#'
#' @param data The lipidomics dataset.
#' @param columns The column you want to convert into the snakecase format.
#'
#' @return A data frame.
#'
column_values_to_snake_case <- function(data, columns) {
  data %>%
    dplyr::mutate(dplyr::across({{ columns }}, snakecase::to_snake_case))
}
