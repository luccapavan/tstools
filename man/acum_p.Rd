% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auto_forecast.R
\name{acum_p}
\alias{acum_p}
\title{Transform variables in percentage in variables in accumulate percentage}
\usage{
acum_p(data, n)
}
\arguments{
\item{data}{Numeric variable in percentage}

\item{n}{Number of periods to accumulate}

}

\value{
A numeric vector in accumulated percentage.
}
\description{
Given vector with variable in percentage the function creates a vector with the variable in accumulated percentage.
}

\examples{
\dontrun{

library(tidyverse)
library(tstools)

data <- tibble(Date = seq.Date(from = as.Date("2012-01-01"),
                               to = as.Date("2018-06-01"),
                               by = "month"),
               V1 = rnorm(mean = 0, sd = 1, n = 78),
               V2 = rnorm(mean = 1, sd = 2, n = 78),
               V3 = rnorm(mean = 5, sd = 1, n = 78))

data_acum <- dplyr::mutate(data, V1_acum12 = acum_p(V1, 12))
              }
}
\author{
J. Renato Leripio
}
