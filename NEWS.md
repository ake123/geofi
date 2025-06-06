# geofi 1.1.0

+ Object `municipality_central_localities` is depracated and replaced with function `municipality_central_localities()`. Relates to changes in latest PROJ version 9.6.0 regarding added support for EUREF-FIN in Finish transformations https://lists.osgeo.org/pipermail/proj/2025-March/011738.html
+ New functions for interacting both with National Land Survey and Statistics Finland OCG API-services. See three new vignettes for examples.


# geofi 1.0.18

+ 2025 regional classifications updated to match with latest changes in stat.fi classification API

# geofi 1.0.17

+ Municipality keys updated to match Kela current classification


# geofi 1.0.16

+ Municipality keys updated to match with latest changes in stat.fi classification API


# geofi 1.0.15

+ Attibute datasets previously downloaded from internet, now included with package

# geofi 1.0.14

+ 2024 regional classifications updated.
+ geofi_joining_attribute_data vignette fixed


# geofi 1.0.12

+ pxweb removed from suggested packages list.
+ WFS api url fixed in Description

# geofi 1.0.11

+ Vignettes made more robust agains missing suggested dependencies

# geofi 1.0.10

+ convert_municipality_key_codes-function fixed, thanks @pitkant
+ Examples in vignettes that use pxweb-data from Statistical Finland changed to use Sotkanet instead due to more stable api

# geofi 1.0.9

+ 2023 regional classifications updated. Two classifications: University Hospital specific catchment area (Erva-alue) and Hospital District (sairaanhoitopiirit) dropped as they are no longer operation but replaced with wellbeing service counties (hyvinvointialueet)

# geofi 1.0.8

+ Links in vignettes pointing to Statistics Finland database updated to match new naming scheme.


# geofi 1.0.7

+ Links in vignettes pinting to Statistics Finland database that started with `pxnet2.stat.fi` changed to start with `pxdata.stat.fi` to match stat.fi new naming scheme.

# geofi 1.0.6

+ The content of variables in municipality keys related to hyvinvointialue (Wellbeing Service Counties) is changed and matches now the classification by Statistics Finland
+ New function `get_municipality_pop()` added for getting population numbers with spatial data of Finnish municipalities from years 2010-2020
+ Function `get_zipcodes()` has a new argument `extend_to_sea_areas` in case you need spatial data the extend further than the coastline


# geofi 1.0.5

- English names for wellbeing services counties corrected
- New ropengov template added for website


# geofi 1.0.4

- new regional classification: upcoming Wellbeing services counties, added to municipality keys files

# geofi 1.0.3

- new convert_municipality_key_codes-function that can be used convert regional 
codes  in on-board municipality key data sets into variable width characters as
originally provided by Statistics Finland
- new codes_as_characters argument added to get_municipalities-function that uses
convert_municipality_key_codes-function to convert region codes to characters of
variable widths. Defaults in FALSE
- examples in vignettes that use suggested package now conditional to 
availability of a package
- tricolore vignette removed due to complex dependencies


# geofi 1.0.2

- examples in vignettes that use pxweb-data from Statistical Finland fixed to match the changed data structure
- http -> https changes in documentation urls


# geofi 1.0.1

- duplicated municipalities removed from municipality keys from year 2016
- tricolore_tutorial.Rmd vignette now provides a proper method for producing the final map


# geofi 1.0.0

- first CRAN release
- compatibility with 2021 mucipality and zipcode divide
- new onboard dataset of municipality central locations as `municipality_central_localities`
- api tests compatible with httptest v4.0.0
- vignettes restructured

# geofi 0.1 (development version)

- Reboot of `gisfin`, package renamed to `geofi`.

## New features

- All WFSs (provider, URL, version) are now listed in 
  `inst/extdata/wfs_providers.yaml`. This separation of data and code hopefully
  makes it easier to manage the data and to use it consistently in different 
  parts of the package (e.g. actual code and tests). Package internally, these
  data are parsed to an environment `wfs_providers`.
- `get_municipalities()` and `get_zipcodes()` can now pass extra-arguments 
  (`...`) to underlying `get_wfs_layer()`. 
- Basic testing harness is in place using `testthat` and `httptest`.

## Development related

- Municipal key rda files in `data` dir are now saved with `compress = "bzip2"`
  to reduce the size of the rda files.
- Decreased version number down to 0.1.0.9004 as this is a new package now.
- Decreased R version requirement to 3.5.0 as check was complaining about the
  previous version number (3.5.2).
- DESCRIPTION now defines `knitr` as the VignetteEngine for the package.
