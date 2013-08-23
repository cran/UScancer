\name{siteLookup}
\alias{siteLookup}
\alias{listCancers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Converts a name description to ICD matching pattern
}
\description{
Given a cancer name (one from \code{\link{listCancers}}), a regular expression pattern is returned to match all ICD-09 site codes that are associated with that cancer name. This regex expression can be passed to \code{\link{readSEER}} as the \code{site} argument. Alternatively, this function is called internally by \code{\link{readSEER}} if only a cancer name is given.
}
\usage{
siteLookup(cancer)
listCancers()
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cancer}{
  Character string of a cancer name. Accepted names listed by \code{\link{listCancers}}. 
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
\code{siteLookup} returns a regular pattern expression used to match ICD-09 codes.

\code{listCancers} returns a vector of accepted cancer names.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
\code{\link{readSEER}}
}
\examples{
listCancers()
siteLookup("Larynx")
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
}




