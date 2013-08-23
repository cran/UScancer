\name{readSEER}
\alias{readSEER}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read SEER cancer data (ASCII)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Reads an ASCII text version of SEER data for one or more given years, states and cancer sites. Data is freely available (after completing a signed SEER Research Data Agreement form) at \url{http://seer.cancer.gov/data/access.html}. 
}
\usage{
readSEER(file="SEER_1973_2010_TEXTDATA/incidence/yr1973_2010.seer9/RESPIR.TXT",
            year,state,cancer,site,fips)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
A vector of filenames specifying the SEER data. Defaults to the directory structure of the 1973-2010 ASCII SEER data on respiratory cancer.
}
  \item{year}{
A numeric vector specifying which years of the data to look at. If not specified, defaults to all years.
}
\item{state}{
A character vector specifying which states to extract. Should be one or more of "Georgia", "California", "New Jersey", "Kentucky", "Louisiana", "Connecticut", "Michigan", "Hawaii", "Iowa", "New Mexico", "Utah", "Washington". If not specified, defaults to all states.
}
\item{cancer}{
A character vector specifying which cancers. This is passed to \code{\link{siteLookup}} to convert to a regular expression matching the proper site codes. Should be one or more of cancers from \code{\link{listCancers}}. If not specified, \code{site} is used instead. If neither are specified, then defaults to all cancers.
}
\item{site}{
A characater vector of regular expressions to match cancer site codes on. This takes precidence over \code{cancer}. If neither are specified, then defaults to all cancers.
}
\item{fips}{
A \code{\link{data.frame}} object with 5-digit FIPS codes as row numbers and two columns (state,county) with names of the state and county matching the FIPS code. A complete object is included in this package, see the \code{\link{fipslookup}} dataset.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Returns a \code{\link{data.frame}} of cancer cases with year, site, state, county, and 5-digit state+county FIPS code. This format is compatible for use with the \code{\link[diseasemapping]{getSMR}} function from the \code{diseasemapping} package.
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
\code{\link{fipslookup}}
}
\examples{
data(fipslookup)

\dontrun{
seerData <- readSEER(year=2005,state="Kentucky",cancer="Larynx",fips=fipslookup)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
