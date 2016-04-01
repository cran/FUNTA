\name{rFUNTA}
\alias{rFUNTA}
\title{Obtain rFUNTA pseudo-depth values
}
\description{For a given dataset, rFUNTA pseudo-depth values can be obtained. rFUNTA is a robustified functional data depth that is based on the intersection angles that the centered functions form with each other.
}
\usage{
rFUNTA(Data, centered = FALSE, type.inner = "max", type.outer = "median", tick.dist = 1,
nObs = nrow(Data))
}
\arguments{
  \item{Data}{a matrix. Enter the discretized values of a functional data set in a n times T matrix, where n is the number of functional observations and T is the number of time points.
}
  \item{centered}{boolean. If the data are already centered, that means, the mean of each row of \code{Data} is 0, this can be set to \code{TRUE} to save computation time. Default value is \code{FALSE}.
}
  \item{type.inner}{One of \code{"max"} (default), \code{"median"}, \code{"mean"}. Note that only the default setting produces rFUNTA values as introduced in Kuhnt and Rehage (2016). The other options can be used if not the maximum intersection angle of each pair of functions is of interest, but the median or mean intersection angle.
}
  \item{type.outer}{One of \code{"max"}, \code{"median"} (default), \code{"mean"}. Note that only the default setting produces rFUNTA values as introduced in Kuhnt and Rehage (2016). The other options can be used if not the \emph{median} value of the n-1 weighted intersection angles of each function is of interest, but the maximum or mean of it.
}
  \item{tick.dist}{atomic vector. The distance between two neighbored time points can be set here. Default value is \code{1}.
}
  \item{nObs}{atomic vector. If the dataset has more than one dimension, specify \code{nObs} with the number of observations per dimension. \code{Data} then has to be in the style of \code{rbind(Dim1, Dim2, ...)}. Note that \code{tick.dist} has to be equal for all the dimensions.}
}
\details{The larger the value of FUNTA is, the less it can be regarded as a shape outlier, and vice versa. The values are bounded by 0 and 1.
}
\value{Vector of rFUNTA values. First observation in \code{Data} corresponds to first element of \code{FUNTA}.
}
\references{Kuhnt, S.; Rehage, A. (2016) An angle-based multivariate functional pseudo-depth for shape outlier detection. \emph{Journal of Multivariate Analysis} 146, 325-340.
}
\author{A. Rehage
}
\examples{
x <- seq(0, 2*pi, by = 0.01)
y1 <- sin(x)
y2 <- sin(1.02*x)
y3 <- cos(x)
y <- rbind(y1, y2, y3)
rFUNTA(y, tick.dist = 0.01)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{classif
}
\keyword{robust
}
