\name{FUNTA-package}
\alias{FUNTA-package}
\docType{package}
\title{
Obtain FUNTA and rFUNTA pseudo-depth for a given functional dataset
}
\description{Given the discretized functional observations, the functions \code{FUNTA} and \code{rFUNTA} are able to compute the functional tangential angle pseudo-depths as introduced in Kuhnt and Rehage (2016).
}
\details{For FUNTA and rFUNTA, insert the data in matrix form (n by T, where n is the number of observations and T is the number of time points).
}
\author{A. Rehage.
}
\references{Kuhnt, S.; Rehage, A. (2016) An angle-based multivariate functional pseudo-depth for shape outlier detection. \emph{Journal of Multivariate Analysis} 146, 325-340.
}
\keyword{ package
classif
robust}
\examples{
x <- seq(0, 2*pi, by = 0.01)
y1 <- sin(x)
y2 <- sin(1.02*x)
y3 <- cos(x)
y <- rbind(y1, y2, y3)
FUNTA(y, tick.dist = 0.01)
rFUNTA(y, tick.dist = 0.01)
}
