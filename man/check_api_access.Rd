% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_api_access.R
\name{check_api_access}
\alias{check_api_access}
\title{Check Access to Statistics Finland Geoserver APIs}
\usage{
check_api_access(which_api = "statfi_wfs")
}
\arguments{
\item{which_api}{Character. The API to check. Must be one of:
\code{"statfi_wfs"} (checks WFS at \code{http://geo.stat.fi/geoserver/wfs})
or \code{"statfi_ogc"} (checks OGC API at
\code{https://geo.stat.fi/inspire/ogc/api/su/}). Defaults to
\code{"statfi_wfs"}.}
}
\value{
Logical. Returns \code{TRUE} if the API is accessible (HTTP status 200),
\code{FALSE} otherwise. Issues a warning if the request fails due to network
issues or non-200 status codes.
}
\description{
Tests whether R can access resources at Statistics Finland's geoserver APIs,
specifically the WFS (Web Feature Service) or OGC API. This internal function
is used to verify connectivity before making API requests.
}
\details{
This function sends a lightweight HTTP request to the specified API endpoint
to check for accessibility. It uses \code{httr2} for robust HTTP handling and
retries transient network failures up to 3 times. The function is intended for
internal use within the package to ensure API connectivity before executing
data retrieval operations.
}
\examples{
\dontrun{
  check_api_access()  # Check WFS API
  check_api_access("statfi_ogc")  # Check OGC API
}
}
\author{
Markus Kainu \email{markus.kainu@kapsi.fi}
}
