\name{fipslookup}
\alias{fipslookup}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
FIPS lookup table
}
\description{
Lookup table for 5-digit FIPS codes to state and county name.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(fipslookup)}
\format{
  A \code{\link{data.frame}} object with 3227 rows and the following 2 variables.
  \describe{
    \item{\code{state}}{State name}
    \item{\code{county}}{County name}
  }
  Row names are the 5-digit FIPS code (state+county). State FIPS codes with only 1 digit are appended by a leading 0.
}
\details{
This is meant to be used with the \code{\link{readSEER}} function to be passed in as the \code{fips} argument.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Original file taken from \url{http://www.schooldata.com/pdfs/US_FIPS_Codes.xls} with updates done manually. New counties (as of 2010) were added, along with FIPS codes for Hawaii, Alaska, and Puerto Rico.
}
%\references{
%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(fipslookup)
}
\keyword{datasets}
