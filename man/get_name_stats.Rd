\name{get_name_stats}
\alias{get_name_stats}
\title{internal function to the package
to get stats about a single firstName}
\usage{
get_name_stats(firstName, gender = TRUE, region = TRUE, ageRange = TRUE)
}
\arguments{
  \item{firstName}{a first name in non-capital letters}

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
get_name_stats("jean")
get_name_stats("jean", gender="male")
get_name_stats("sabrina", gender="female")
get_name_stats("jean", gender="male", region="bruxelles")
get_name_stats("jean", gender="male", region="bruxelles", ageRange="above64")
 })
}

