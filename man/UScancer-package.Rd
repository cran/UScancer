\name{UScancer-package}
\alias{UScancer-package}
\alias{UScancer}
\docType{package}
\title{
Create US cancer datasets from SEER, IARC, and US Census data
}
\description{
This package contains functions to read cancer data from SEER (\url{http://seer.cancer.gov/}) and IARC (\url{http://www.iarc.fr}) to create datasets at the county level based on US census information.
}
\details{
\tabular{ll}{
Package: \tab UScancer\cr
Type: \tab Package\cr
Version: \tab 0.1-1\cr
Date: \tab 2013-08-21\cr
License: \tab GPL-2\cr
}
Due to size constraints, US census and cancer data are not included in this package, but are necessary for the package to run. This data is freely available for download on the internet.

SEER cancer data can be downloaded (after completing a signed SEER Research Data Agreement form) at \url{http://seer.cancer.gov/data/access.html}.

The 2010 US Census Demographic Profile data in Shapefile format can be downloaded from
\url{http://www2.census.gov/geo/tiger/TIGER2010DP1/County_2010Census_DP1.zip}.

Conversion from FIPS codes to county names is done through a lookup table included in this package -- see the \code{\link{fipslookup}} dataset.

Conversion from demographic profile data element to its full name is done through a lookup table included in this package -- see the \code{\link{dplookup}} dataset.

Conversion from cancer sites (types) to ICD-9 cancer codes are done through the \code{\link{siteLookup}}.
}

\author{
Jonathan Lee

Maintainer: Jonathan Lee <jonathan@utstat.utoronto.ca>
}
%\references{
%}

\examples{

data(fipslookup)
data(dplookup)

\dontrun{

censusData <- readCensus(state="Kentucky",fips=fipslookup,codes=dplookup)
seerData <- readSEER(year=2005,state="Kentucky",cancer="Larynx",fips=fipslookup)

library(diseasemapping)
larynxRates <- cancerRates("USA", year=1998:2002,site="Larynx")
kentucky <- getSMR(censusData,larynxRates,seerData,regoinCode="County")

breaks = c(0,1,seq(2, ceiling(max(kentucky$SMR)),by=2))
thecol = terrain.colors(length(breaks)-1)
plot(kentucky, col = thecol[cut(kentucky$SMR, breaks,include.lowest=TRUE)] )
}


}

\keyword{package}
%\seealso{
%}
%\examples{
%}
