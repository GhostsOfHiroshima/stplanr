% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpatialLinesNetwork.R
\name{find_network_nodes}
\alias{find_network_nodes}
\title{Find graph node ID of closest node to given coordinates}
\usage{
find_network_nodes(sln, x, y = NULL, maxdist = 1000)
}
\arguments{
\item{sln}{SpatialLinesNetwork to search.}

\item{x}{Either the x (longitude) coordinate value, a vector of x values,
a dataframe or matrix with (at least) two columns, the first for coordinate
for x (longitude) values and a second for y (latitude) values, or a named
vector of length two with values of 'lat' and 'lon'. The output of
RgoogleMaps::getGeoCode() either as a single result or as multiple (using
rbind() ) can also be used.}

\item{y}{Either the y (latitude) coordinate value or a vector of y values.}

\item{maxdist}{The maximum distance within which to match the nodes to
coordinates. If the SpatialLinesNetwork is projected then distance should
be in the same units as the projection. If longlat, then distance is in
metres. Default is 1000.}
}
\value{
An integer value with the ID of the node closest to \code{(x,y)}
with a value of \code{NA} the closest node is further than \code{maxdist}
from \code{(x,y)}. If \code{x} is a vector, returns a vector of Node IDs.
}
\description{
Find graph node ID of closest node to given coordinates
}
\section{Details}{

Finds the node ID of the closest point to a single coordinate pair (or a
set of coordinates) from a SpatialLinesNetwork.
}
