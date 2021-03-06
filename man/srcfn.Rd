% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UnaryFunctions.R
\name{srcfn}
\alias{srcfn}
\title{Wrap the source for an exprssion as a function.}
\usage{
srcfn(expr_src, arg_name = ".", args = list())
}
\arguments{
\item{expr_src}{character, source code of expresson.}

\item{arg_name}{characer, name of argument to assign.}

\item{args}{named list of adittional arguments and values.}
}
\value{
SrcFunction
}
\description{
Wrap the source for an exprssion as a function.
}
\examples{

f <- srcfn(". + z", ".", args = list(z = 10))
cat(format(f))
1:3 \%.>\% f


}
\seealso{
\code{\link{fnlist}}, \code{\link{pkgfn}}, \code{\link{wrapfn}}
}
