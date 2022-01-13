#' Average period age ratio of all Chinese leap years
#' @param x Vector of birth survivors
#' @param year year of census
#' @return average period age ratio of all leap years
#'
#' @examples
#' leap_years_apar(data$Female, 1905)



leap_years_apar <- function(x, year){
  output <- mean(leap_years_par(x,year))
  return(output)
}

leap_years_par <- function(x, year){
  data(years)
  PAR <- par_3(x)
  index <- year - years$Year +1
  index <- index[index>=0 & index<101]
  age <- year-index
  age <- index[index<81 & index>2]
  return(PAR[age])

}


