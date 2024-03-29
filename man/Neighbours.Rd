\name{Neighbours}
\alias{Neighbours}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Find All Neighbours of a Regional Object
%%  ~~function to do ... ~~
}
\description{Finding all directly adjacent neighbours of a regional unit is not trivial. For a list of regional units, this function searches for the corresponding Neighbours and returns the results as a list.
}
\usage{
Neighbours(map, id = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{map}{the name of the map
%%     ~~Describe \code{map} here~~
}
  \item{id}{vector of ids for which the Neighbours are to be found. When it's left to \code{NULL} (default), the neighbours for all the polygons of the map will be returned.
%%     ~~Describe \code{id} here~~
}
}
\value{A list of vectors of ids for the neighbours of each region in the map.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{Andri Signorell <andri@signorell.net>
%%  ~~who you are~~
}

\examples{try( {

nbs <- Neighbours(GetMap("kant.map"), kt_id <- 18)
PlotKant(c(kt_id, nbs), col=c("red", rep("green", length(nbs))) )

# works as well for communities and for vector of ids
nbs <- Neighbours(GetMap("polg.map"), polg_id <- c(3851, 3352))
PlotPolg(c(polg_id, unlist(nbs)),
         col=c(rep("red", 2), rep("green", length(unlist(nbs)))))

})}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{spatial}
