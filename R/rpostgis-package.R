## rpostgis

##' R interface to a PostGIS database.
##'
##' This package provides additional functions to the
##' \code{RPostgreSQL} package to interface R with a PostGIS-enabled
##' database, as well as convenient wrappers to common PostgreSQL
##' queries. For a list of documented functions, use
##' \code{library(help = "rpostgis")}.
##'
##' A typical session starts by establishing the connection to a
##' working PostgreSQL database:
##'
##'     library(rpostgis)
##'     con <- dbConnect("PostgreSQL", dbname = <dbname>, host = <host>,
##'             user = <user>, password = <password>)
##'
##' For example, this could be:
##'
##'     con <- dbConnect("PostgreSQL", dbname = "rpostgis", host = "localhost",
##'         user = "postgres", password = "postgres")
##'
##' The next step typically involves checking if PostGIS was installed
##' on the working database, and if not try to install it:
##'
##'     pgPostGIS(con)
##'
##' The function should return \code{TRUE} for all \code{pg-}
##' functions to work.
##'
##' Finally, at the end of an interactive session, the connection to
##' the database should be closed:
##'
##'     dbDisconnect(con)
##'
##' @docType package
##' @name rpostgis
##' @import RPostgreSQL
##' @importFrom methods slot "slot<-"
##' @author Mathieu Basille (\email{basille@@ufl.edu}) and David
##'     Bucklin (\email{dbucklin@@ufl.edu})

NULL
