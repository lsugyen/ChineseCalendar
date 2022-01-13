#' Visualize period age ratio of Chinese leap years
#'
#' @param x Vector of birth survivors, from age 0 to 100
#' @param year Year of Census
#'
#' @return a visualization of Chinese leap year period age ratio
#' @export
#'
#' @examples
#'data(taiwan1905)
#'plot_par(taiwan1905$Total,1905)

plot_par <- function(x,year,start=1,end=90,...){
  PAR <- par_3(x)
  birth_year <- year-seq(start:end)
  data(years)
  index <- year - years$Year + 1
  index <- index[index>=start & index<end]
  colors = rep("green",length(birth_year))
  colors[index] = "red"

  barplot(height = PAR[start:end],
          names=birth_year,
          col = colors, xlab = "Birth Year",
          ylab = "Three Year Average Period Age Ratio",...)
  abline(h=100)
}
