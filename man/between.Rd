\name{between}
\alias{between}
\alias{\%between\%}
\title{ Convenience function for range subset logic. }
\description{
  Intended for use in \code{i} in \code{[.data.table}.
}
\usage{
between(x,lower,upper,incbounds=TRUE)
x \%between\% y
}
\arguments{
   \item{x}{ Any orderable vector, i.e., those with relevant methods for \code{`<=`}, such as \code{numeric}, \code{character}, \code{Date}, ... }
   \item{lower}{ Lower range bound. }
   \item{upper}{ Upper range bound. }
   \item{y}{ A length-2 vector, with \code{y[1]} interpreted as \code{lower} and \code{y[2]} as \code{upper}. }
   \item{incbounds}{ \code{TRUE} means inclusive bounds, i.e., [lower,upper]. \code{FALSE} means exclusive bounds, i.e., (lower,upper). }
}
% \details{
% }
\value{
    Logical vector as the same length as \code{x} with value \code{TRUE} for those that lie within the specified range.
}
\note{ Current implementation does not make use of ordered keys. \code{incbounds} is set to \code{TRUE} for the infix notation \code{\%between\%}. }
\seealso{ \code{\link{data.table}}, \code{\link{like}} }
\examples{
DT = data.table(a=1:5, b=6:10)
DT[b \%between\% c(7,9)]
}
\keyword{ data }
