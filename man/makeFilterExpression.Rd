% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/GSEABase-helpers.R,
%   R/GeneSet-helpers.R, R/unisets-helpers.R
\docType{methods}
\name{makeFilterExpression}
\alias{makeFilterExpression}
\alias{makeFilterExpression,GeneSetCollection-method}
\alias{makeFilterExpression,GeneSetCollection-methods}
\alias{makeFilterExpression,tbl_geneset-method}
\alias{makeFilterExpression,tbl_geneset-methods}
\alias{makeFilterExpression,BaseSets-method}
\alias{makeFilterExpression,BaseSets-methods}
\title{Build Filter Expressions from \code{GeneSetCollection} objects}
\usage{
makeFilterExpression(object)

\S4method{makeFilterExpression}{GeneSetCollection}(object)

\S4method{makeFilterExpression}{tbl_geneset}(object)

\S4method{makeFilterExpression}{BaseSets}(object)
}
\arguments{
\item{object}{An object of class inheriting from \code{\link{BaseSets}} or \code{\link{GeneSetCollection}}.}
}
\value{
A list of \code{\link{expression}} that combines the markers listed in each gene set.
}
\description{
This function create a list of unevaluated expressions representing a collection of signatures.
The resulting expressions can be evaluated as \code{FilterRules} inside an environment such as a \code{data.frame} of sample-by-gene detection events.
}
\examples{
# Example data ----

library(unisets)
gmt <- system.file(package = "hancock", "extdata", "seurat_pbmc3k.gmt")
genesets <- import(gmt)

# Example usage ----
fe <- makeFilterExpression(genesets)
}
\author{
Kevin Rue-Albrecht
}
