% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partition_tables.R
\name{execute_parallel}
\alias{execute_parallel}
\title{Execute f in parallel partitioned by partition_column.}
\usage{
execute_parallel(tables, f, partition_column, ..., cl = NULL,
  debug = FALSE, env = parent.frame())
}
\arguments{
\item{tables}{named map of tables to use.}

\item{f}{function to apply to each tableset signature is function takes a single argument that is a named list of data.frames.}

\item{partition_column}{character name of column to partition on}

\item{...}{force later arguments to bind by name.}

\item{cl}{parallel cluster.}

\item{debug}{logical if TRUE use lapply instead of parallel::clusterApplyLB.}

\item{env}{environment to look for values in.}
}
\value{
list of f evaluations.
}
\description{
Execute f in parallel partitioned by \code{partition_column}, see
\code{\link{partition_tables}} for details.
}
\examples{

if(requireNamespace("parallel", quietly = TRUE)) {
  cl <- parallel::makeCluster(2)

  d <- data.frame(x = 1:5, g = c(1, 1, 2, 2 ,2))
  f <- function(dl) {
    d <- dl$d
    d$s <- sqrt(d$x)
    d
  }
  r <- execute_parallel(list(d = d), f,
                        partition_column = "g",
                        cl = cl) \%.>\%
    do.call(rbind, .) \%.>\%
    print(.)

  parallel::stopCluster(cl)
}

}
\seealso{
\code{\link{partition_tables}}
}
