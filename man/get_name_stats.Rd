\name{get_name_stats}
\alias{get_name_stats}
\title{internal function to the package
to get stats about a single firstName}
\usage{
get_name_stats(firstName, gender = TRUE, region = TRUE, ageRange = TRUE)
}
\arguments{
  \item{firstName}{a first name}

  \item{gender}{(optional) the gender, if known}

  \item{region}{(optional) the region, if known}

  \item{ageRange}{(optional) the ageRange, if known}
}
\value{
singe line data frame with statistics about the first name
}
\description{
internal function to the package to get stats about a
single firstName
}
\examples{
\dontrun{
get_name_stats("Jean")
get_name_stats("Jean", gender="male")
get_name_stats("Sabrina", gender="female")
get_name_stats("Jean", gender="male", region="bruxelles")
get_name_stats("Jean", gender="male", region="bruxelles", ageRange="above64")
 })
}

