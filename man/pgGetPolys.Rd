% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pgGetGeom.R
\name{pgGetPolys}
\alias{pgGetPolys}
\title{Load a PostGIS polygon geometry from a PostgreSQL table/view into R.}
\usage{
pgGetPolys(conn, name, geom = "geom", gid = NULL, other.cols = "*",
  clauses = NULL)
}
\value{
SpatialPolygonsDataFrame or SpatialPolygons
}
\description{
Load a PostGIS polygon geometry from a PostgreSQL table/view into R.
}
\examples{
\dontrun{
pgGetPolys(conn, c("schema", "tablename"))
pgGetPolys(conn, c("schema", "states"), geom = "statesgeom",
    gid = "state_ID", other.cols = "area,population",
    clauses  = "WHERE area > 1000000 ORDER BY population LIMIT 10")
}
}
\author{
David Bucklin \email{dbucklin@ufl.edu}

Mathieu Basille \email{basille@ufl.edu}
}
\keyword{internal}

