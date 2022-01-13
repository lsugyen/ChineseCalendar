#' 3-Year Period Age Ratio
#' @param x Vector of birth survivors, from age 0 to 100
#' @return 3 Year Period Age Ratio of ages 2 to 99. Note that the first and last element equals 0.
#'
#' @examples
par_3 <- function(x){
  period_age_ratio = c(0)
  for (i in 1:99){
    period_age_ratio[i+1] = round(x[i+1]*300/(x[i]+x[i+1]+x[i+2]),2)
  }
  period_age_ratio[101] = 0
  return(period_age_ratio)
}
