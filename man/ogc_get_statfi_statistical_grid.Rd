% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ogc_api_statfi.R
\name{ogc_get_statfi_statistical_grid}
\alias{ogc_get_statfi_statistical_grid}
\title{Retrieve Finnish Statistical Grid with Population Data}
\usage{
ogc_get_statfi_statistical_grid(
  year = 2021,
  resolution = 5000,
  limit = NULL,
  bbox = NULL
)
}
\arguments{
\item{year}{Integer. Year of the grid and population data. Options: 2019, 2020, 2021. Default: 2021.}

\item{resolution}{Integer. Grid cell resolution in meters. Options: 1000 (1km), 5000 (5km). Default: 5000.}

\item{limit}{Integer or NULL. Maximum number of features to retrieve. If NULL, retrieves all available features. Default: NULL.}

\item{bbox}{Character or NULL. Bounding box for spatial filtering in format "xmin,ymin,xmax,ymax" (in EPSG:3067). Default: NULL.}
}
\value{
An \code{sf} object containing grid cell spatial data and population statistics, pivoted to wide format with variables as columns, or NULL if no data is retrieved.
}
\description{
Retrieves population data for Finnish statistical grid cells from Statistics Finland's OGC API.
Supports different years and grid resolutions, with data in EPSG:3067 (ETRS89 / TM35FIN).
}
\examples{
\dontrun{
# Get 5km grid population data for 2020
grid_data <- ogc_get_statfi_statistical_grid2(year = 2020, resolution = 5000)

# Get 1km grid data within a bounding box
bbox <- "200000,6600000,500000,6900000"
grid_data <- ogc_get_statfi_statistical_grid2(year = 2021, resolution = 1000, bbox = bbox)

# Limit to 10 features
grid_data <- ogc_get_statfi_statistical_grid2(year = 2019, resolution = 5000, limit = 10)
}
}
\author{
Markus Kainu \href{mailto:markus.kainu@kapsi.fi}{markus.kainu@kapsi.fi}
}
