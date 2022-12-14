% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/OpticsXtractXi.R
\name{OpticsXtractXi}
\alias{OpticsXtractXi}
\title{Extracts Xi Optics from point data}
\usage{
OpticsXtractXi(filename, x, y, eps, minPts, Xi)
}
\arguments{
\item{filename}{a csv containing x,y coordinates}

\item{x}{column number with x coordinates}

\item{y}{column number with y coordinates}

\item{eps}{EPS parameter for clustering}

\item{minPts}{minPts parameter for clustering}

\item{Xi}{Xi parameter for cluster extraction}
}
\value{
a dataframe with the csv content and the cluster ID added as column
}
\description{
Extracts Xi Optics from point data
}
