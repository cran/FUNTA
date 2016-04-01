\name{FUNTA}
\alias{FUNTA}
\title{Obtain FUNTA pseudo-depth values
}
\description{For a given dataset, FUNTA pseudo-depth values can be obtained. FUNTA is a functional data depth that is based on the intersection angles that the centered functions form with each other.
}
\usage{
FUNTA(Data, centered = FALSE, give.angles = FALSE, tick.dist = 1)
}
\arguments{
  \item{Data}{a matrix. Enter the discretized values of a functional data set in a n times T matrix, where n is the number of functional observations and T is the number of time points.
}
  \item{centered}{boolean. If the data are already centered, that means, the mean of each row of \code{Data} is 0, this can be set to \code{TRUE} to save computation time. Default value is \code{FALSE}.
}
  \item{give.angles}{boolean. If the intersection angles of each function with the other functions are to be displayed, set to \code{TRUE}. Default value is \code{FALSE}.
}
  \item{tick.dist}{atomic vector. The distance between two neighbored time points can be set here. Default value is \code{1}.
}
}
\details{The larger the value of FUNTA is, the less it can be regarded as a shape outlier, and vice versa. The values are bounded by 0 and 1.
}
\value{If \code{give.angles = TRUE}, a list of two elements FUNTA and Angles. Otherwise only the first element of that list is returned.
\item{FUNTA}{Vector of FUNTA values. First row of \code{Data} corresponds to first element of \code{FUNTA}.}
\item{Angles}{List of intersection angles. First element of list corresponds to the intersection angles that the first row of \code{Data} has with every other row of \code{Data}, ordered by time point of intersection.}
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
FUNTA(y, tick.dist = 0.01)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{classif
}
