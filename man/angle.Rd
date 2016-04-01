\name{angle}
\alias{angle}
\title{Auxiliary function to compute intersection angles
}
\description{Internal function that is used by \code{FUNTA} and \code{rFUNTA}.
}
\usage{
angle(cut.slope, ref.slope, tick.dist)
}
\arguments{
  \item{cut.slope}{The slope of function x1.
}
  \item{ref.slope}{The slope of function x2.
}
  \item{tick.dist}{The length of the slopes.
}
}
\value{The intersection angle of x1 and x2.
}
\author{A. Rehage
}
\examples{
angle(1,2,0.1)
}
