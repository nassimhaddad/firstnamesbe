\name{nameStats}
\alias{nameStats}
\title{get stats about a first names
main function of the package}
\usage{
nameStats(firstName, gender = TRUE, region = TRUE, ageRange = TRUE)
}
\arguments{
  \item{firstName}{a vector of first names, the case
  doesn't matter}

  \item{gender}{(optional) a vector of genders, TRUE means
  all genders}

  \item{region}{(optional) a vector of regions, TRUE means
  all regions}

  \item{ageRange}{(optional) a vector of age ranges, TRUE
  means all age ranges}

  \item{ignore.case}{(optional) whether to ignore the case}
}
\value{
data frame with statistics about the first names given
}
\description{
get stats about a first names main function of the package
}
\examples{
\dontrun{
nameStats("Bart")

nameStats("Tintin") # no-one's called that way in 2013

nameStats(firstName = c("Alex", "Bart", "Clara"))

nameStats(firstName = c("Alex", "Bart", "Clara"),
          gender = c("male", "male", "female"))

nameStats(firstName = c("Alex", "Bart", "Clara"),
          region = c("bruxelles", "bruxelles", "flandre"))

nameStats(firstName = c("Alex", "Bart", "Clara"),
          ageRange = c("18to64", "18to64", "18to64"))

 })
}

