\name{dplookup}
\alias{dplookup}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
Census demographics profile lookup table
}
\description{
A lookup table for US census demographic profile data element to its full name. Only contains the codes for sex and age groups.
}
\usage{data(dplookup)}
\format{
  A \code{\link{data.frame}} object with 39 rows with the following 2 variables.
  \describe{
    \item{\code{code}}{Demographic profile data element code}
    \item{\code{desc}}{A simplified description of the code. i.e. Male ages 5 to 9 is M5_9}
  }
}
%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Original data from \url{http://gis.drcog.org/datacatalog/sites/default/.../Census_Table_Descriptions.xls}.
}
%\references{
%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(dplookup)
}
\keyword{datasets}
