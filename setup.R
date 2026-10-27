packages <- c(
  "reticulate",
  "dplyr",
  "readr",
  "tibble",
  "ggplot2",
  "ggrepel",
  "plotly",
  "pheatmap",
  "DT"
)

install_if_missing <- function(p) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p, repos = "https://cloud.r-project.org")
  }
}

invisible(lapply(packages, install_if_missing))
message("All required R packages are installed.")
