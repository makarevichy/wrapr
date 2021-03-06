% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qae.R
\name{qe}
\alias{qe}
\title{Quote expressions.}
\usage{
qe(...)
}
\arguments{
\item{...}{assignment expressions.}
}
\value{
array of quoted assignment expressions.
}
\description{
Accepts arbitrary un-parsed expressions as
to allow forms such as "Sepal.Length >= 2 * Sepal.Width".
(without the quotes).
}
\details{
qe() uses bquote() .() quasiquotation escaping notation.
}
\examples{

ratio <- 2

exprs <- qe(Sepal.Length >= ratio * Sepal.Width,
             Petal.Length <= 3.5)
print(exprs)

exprs <- qe(Sepal.Length >= .(ratio) * Sepal.Width,
             Petal.Length <= 3.5)
print(exprs)

}
\seealso{
\code{\link{qc}}, \code{\link{qae}}
}
