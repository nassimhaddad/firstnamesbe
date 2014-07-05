\name{nameStats}
\alias{nameStats}
\title{get stats about a first names
main function of the package}
\usage{
nameStats(firstName, gender = TRUE, region = TRUE, ageRange = TRUE)
}
\arguments{
  \item{firstName}{a vector of first names}

  \item{gender}{(optional) a vector of genders, TRUE means
  all genders}

  \item{region}{(optional) a vector of regions, TRUE means
  all regions}

  \item{ageRange}{(optional) a vector of age ranges, TRUE
  means all age ranges}
}
\value{
data frame with statistics about the first names given
}
\description{
get stats about a first names main function of the package
}
\examples{
\dontrun{
nameStats(firstName = c("Jean", "Olivier", "Sabrina"))
nameStats(firstName = c("Jean", "Olivier", "Sabrina"),
gender = c("male", "male", "female"))
 })
}

