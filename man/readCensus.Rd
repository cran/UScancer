\name{readCensus}
\alias{readCensus}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read US census
}
\description{
Read US census demographic profile data. The raw data can be downloaded in Shapefile format from \url{http://www2.census.gov/geo/tiger/TIGER2010DP1/County_2010Census_DP1.zip} to be used with this function.
}
\usage{
readCensus(dsn="",layer="County_2010Census_DP1",state,fips,codes)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dsn}{
    The data source name, usually a path pointing to the folder the county shapefile is in. Defaults to current directory.
  }
  \item{layer}{
    Layer name, usually the filename without the extension. Defaults to the 2010 Census data by county (County_2010_Census_DP1).
  }
  \item{state}{
  A character vector specifying which states to extract. If not specified, defaults to all states.
  }
  \item{fips}{
  A \code{\link{data.frame}} object with 5-digit FIPS codes as row numbers and two columns (state,county) with names of the state and county matching the FIPS code. A complete object is included in this package, see the \code{\link{fipslookup}} dataset.
  }
  \item{codes}{
    A lookup table for demographic profile data element to its full name. One such lookup table for age and sex demographic groups is provided with this package, see the \code{\link{dplookup}} dataset.
  }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
A \code{\link[sp]{SpatialPolygonsDataFrame}}. The \code{data} slot contains renamed columns of all the age and sex groups along with a 5 digit state+county FIPS column. This format is compatible for use with the \code{\link[diseasemapping]{getSMR}} function from the \code{diseasemapping} package.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Jonathan Lee \email{jonathan@utstat.utoronto.ca}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{dplookup}}
}
\examples{
data(dplookup)
data(fipslookup)

\dontrun{
usPop <- readCensus(dsn="/",layer="County_2010Census_DP1",state="Kentucky",
                     fips=fipslookup,codes=dplookup)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
