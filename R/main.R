
#' internal function to the package
#' to get stats about a single firstName
#' 
#' @param firstName a first name in non-capital letters
#' @param gender (optional) the gender, if known
#' @param region (optional) the region, if known
#' @param ageRange (optional) the ageRange, if known
#' @return 
#' singe line data frame with statistics about the first name
#' @examples
#' \dontrun{
#' get_name_stats("jean")
#' get_name_stats("jean", gender="male")
#' get_name_stats("sabrina", gender="female")
#' get_name_stats("jean", gender="male", region="bruxelles")
#' get_name_stats("jean", gender="male", region="bruxelles", ageRange="above64")
#'  })
get_name_stats <- function(firstName, 
                           gender = TRUE,
                           region = TRUE,
                           ageRange = TRUE){
  
  temp <- tryCatch({dataArrayLower[firstName,gender,region,ageRange, drop=FALSE]},
           error = function(e)return(data.frame(n=0)))

  n <- sum(temp)
  if (n == 0){
    return(data.frame(n=0))
  }
  out <- c(apply(temp, 2, sum)/n,
           apply(temp, 3, sum)/n,
           apply(temp, 4, sum)/n,
           n = n)
  out <- round(out, 3)
  as.data.frame(t(out))
}


#' get stats about a first names
#' main function of the package
#' 
#' @param firstName a vector of first names, the case doesn't matter
#' @param gender (optional) a vector of genders, TRUE means all genders
#' @param region (optional) a vector of regions, TRUE means all regions
#' @param ageRange (optional) a vector of age ranges, TRUE means all age ranges
#' @param ignore.case (optional) whether to ignore the case
#' @export
#' @return 
#' data frame with statistics about the first names given
#' @examples
#' \dontrun{
#' nameStats("Bart")
#' 
#' nameStats("Tintin") # no-one's called that way in 2013
#' 
#' nameStats(firstName = c("Alex", "Bart", "Clara"))
#' 
#' nameStats(firstName = c("Alex", "Bart", "Clara"),
#'           gender = c("male", "male", "female"))
#'           
#' nameStats(firstName = c("Alex", "Bart", "Clara"),
#'           region = c("bruxelles", "bruxelles", "flandre"))
#'           
#' nameStats(firstName = c("Alex", "Bart", "Clara"),
#'           ageRange = c("18to64", "18to64", "18to64"))
#' 
#'  })
nameStats <- function(firstName, 
                      gender = TRUE,
                      region = TRUE,
                      ageRange = TRUE){
  firstNameInput <- firstName
  firstName <- tolower(firstName)
  
  results_list <- mapply(get_name_stats, 
                         firstName = firstName,
                         gender = gender,
                         region = region,
                         ageRange = ageRange,
                         SIMPLIFY=FALSE)
  out <- do.call(rbind.fill, results_list)
  
  df <- structure(list(male = numeric(0), female = numeric(0), bruxelles = numeric(0), 
                       flandre = numeric(0), wallonie = numeric(0), below18 = numeric(0), 
                       `18to64` = numeric(0), above64 = numeric(0), n = numeric(0)), 
                  .Names = c("male", "female", "bruxelles", 
                             "flandre", "wallonie", "below18", "18to64", 
                             "above64", "n"), row.names = integer(0), class = "data.frame")
  df <- rbind.fill(df, out)
  df[is.na(df)]<-0
  out <- data.frame(firstName = firstNameInput,
                    df)
  out
}
