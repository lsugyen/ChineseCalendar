#' 1905 Taiwanese census data with only the local Taiwanese population (Japanese and Chinese excluded)
#'
#' A dataset containing the number of birth survivors from each age group, broken down by gender.
#'
#' @format A data frame with 101 rows and 4 variables:
#' \describe{
#'   \item{Age}{Age from 0 to 100}
#'   \item{Total}{Total number of birth survivors with a given age}
#'   \item{Male}{Total number of male birth survivors with a given age}
#'   \item{Female}{Total number of female birth survivors with a given age}
#' }
#'  @examples data(taiwan1905)
"taiwan1905"

#' 1915 Taiwanese census data with only the local Taiwanese population (Japanese and Chinese excluded)
#'
#' A dataset containing the number of birth survivors from each age group, broken down by gender.
#'
#' @format A data frame with 101 rows and 4 variables:
#' \describe{
#'   \item{Age}{Age from 0 to 100}
#'   \item{Total}{Total number of birth survivors with a given age}
#'   \item{Male}{Total number of male birth survivors with a given age}
#'   \item{Female}{Total number of female birth survivors with a given age}
#' }
#'  @examples data(taiwan1915)
"taiwan1915"

#' 1920 Taiwanese census data with only the local Taiwanese population (Japanese and Chinese excluded)
#'
#' A dataset containing the number of birth survivors from each age group, broken down by gender.
#'
#' @format A data frame with 101 rows and 4 variables:
#' \describe{
#'   \item{Age}{Age from 0 to 100}
#'   \item{Total}{Total number of birth survivors with a given age}
#'   \item{Male}{Total number of male birth survivors with a given age}
#'   \item{Female}{Total number of female birth survivors with a given age}
#' }
#' @examples data(taiwan1920)
"taiwan1920"

#' 1935 Taiwanese census data with only the local Taiwanese population (Japanese and Chinese excluded)
#'
#' A dataset containing the number of birth survivors from each age group, broken down by gender.
#'
#' @format A data frame with 101 rows and 4 variables:
#' \describe{
#'   \item{Age}{Age from 0 to 100}
#'   \item{Total}{Total number of birth survivors with a given age}
#'   \item{Male}{Total number of male birth survivors with a given age}
#'   \item{Female}{Total number of female birth survivors with a given age}
#' }
#'  @examples data(taiwan1935)
"taiwan1935"

#' Length breakdown of each Chinese year in the western calendar
#'
#' A dataset containing the number of days that each Chinese year has that falls in each western year, going back to 1804.
#'
#' @format A data frame with 197 rows and 5 variables:
#' \describe{
#'   \item{Chinese.Year}{The year according to the Chinese calendar. It starts roughly a month after the western calendar and has length varying between 353 and 385 days.}
#'   \item{Number of Days}{Length of the Chinese Year, varies from 353 to 385.}
#'   \item{Days in Current Western Year}{Number of days that Chinese year overlaps with the same western year}
#'   \item{Days in Next Western year}{Equals to Number of Days minus Days in Current Western Year}
#'   \item{Days from Previous Western year}{Equals to Days in Next Western year of the previous row}
#' }
#'  @examples data(year_length)
"year_length"

#' Collection of all Chinese leap years and their lengths
#'
#' A dataset containing the length of each Chinese leap year from 1800 to 1982.
#' @format A data frame with 197 rows and 5 variables:
#' \describe{
#'   \item{Year}{Th Chinese year}
#'   \item{Days}{Length of the Chinese Year, varies from 353 to 385.}
#' }
#'  @examples data(years)
"years"
