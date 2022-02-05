#' Adjust census data that uses the Chinese calendar
#' @param raw_data vector of single year birth survivors
#' @param year year of census
#' @return Returns a vector of birth survivor by single year, adjusted by year length in the Chinese calendar
#' @examples
#' file = read_excel("C:/Users/alber/OneDrive/Desktop/Calendar Research/Census Data/Taiwan/Taiwan1905.xlsx", sheet=2)[1:101,]
#' data = as.data.frame(file)
#' adjust(data$Male,1905)

adjust <- function(raw_data, year){
  #data(year_length)
  birthyear = year-seq(from=0,to=100)
  current <- c()
  current2 <- c()
  nex <- c()
  nex2 <- c()
  adjusted <- c()
  #Separate population by adjusted birth year
  ##Male

  for (i in 1:101){
    by = birthyear[i]
    c = year_length[year_length$Chinese.Year==by,3]
    d = year_length[year_length$Chinese.Year==birthyear[i],2]

    current[i] = round(raw_data[i]*c/d)
  }
  for (i in 1:101){
    by = birthyear[i]
    e = year_length[year_length$Chinese.Year==by,4]
    f = year_length[year_length$Chinese.Year==birthyear[i],2]

    nex[i] = round(raw_data[i]*e/f)
  }
  current = unlist(current)
  nex = unlist(nex)
  current2 = unlist(current2)
  nex2 = unlist(nex2)

  for (i in 1:101){
    adjusted[i] = current[i]+nex[i+1]
  }
  adjusted[101] = current[101]

  original_sum = sum(raw_data)
  ratio <- sum(adjusted)/sum(raw_data)
  adjusted <- round(adjusted/ratio)

  return(adjusted)
}

