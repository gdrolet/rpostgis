% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pgGetPolys.R
\name{pgGetPolys}
\alias{pgGetPolys}
\title{Retrieve polygon geometries from a PostGIS table, and convert it
to a SpatialPolygons or a SpatialPolygonsDataFrame.  title Load a
polygon geometry stored in a PostgreSQL database into R.}
\usage{
pgGetPolys(conn, name, geom = "geom", gid = NULL, other.cols = "*",
  query = NULL)
}
\arguments{
\item{conn}{A connection object to a PostgreSQL database}

\item{name}{A character string specifying a PostgreSQL schema (if
necessary), and table or view name for the table holding the
polygon geometry (e.g., name = c("schema","table"))}

\item{geom}{character, Name of the column in 'name' holding the
geometry object (Default = 'geom')}

\item{gid}{character, Name of the column in 'name' holding the ID
for each polygon geometry. Should be unique if additional
columns of unique data are being appended. \code{gid=NULL}
(default) automatically creates a new unique ID for each row
in the table.}

\item{other.cols}{character, names of additional columns from
table (comma-seperated) to append to dataset (Default is all
columns, other.cols=NULL returns a SpatialPolygons object)}

\item{query}{character, additional SQL to append to modify select
query from table}
}
\value{
SpatialPolygonsDataFrame or SpatialPolygons
}
\description{
Retrieve polygon geometries from a PostGIS table, and convert it
to a SpatialPolygons or a SpatialPolygonsDataFrame.  title Load a
polygon geometry stored in a PostgreSQL database into R.
}
\examples{
\dontrun{
drv <- dbDriver("PostgreSQL")
conn <- dbConnect(drv, dbname = "dbname", host = "host", port = "5432",
    user = "user", password = "password")
pgGetPolys(conn, c("schema", "tablename"))
pgGetPolys(conn, c("schema", "states"), geom = "statesgeom",
    gid = "state_ID", other.cols = "area,population",
    query = "AND area > 1000000 ORDER BY population LIMIT 10")
}
}
\author{
David Bucklin \email{david.bucklin@gmail.com}
}
