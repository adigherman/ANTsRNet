% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/customMetrics.R
\name{pearson_correlation_coefficient}
\alias{pearson_correlation_coefficient}
\title{Function for Pearson correlation coefficient.}
\usage{
pearson_correlation_coefficient(y_true, y_pred)
}
\arguments{
\item{y_true}{True labels (Tensor)}

\item{y_pred}{Predictions (Tensor of the same shape as \code{y_true})}
}
\value{
Correlation
}
\description{
Function for Pearson correlation coefficient.
}
\examples{

library( ANTsRNet )
library( keras )

model <- createUnetModel2D( c( 64, 64, 1 ) )

metric_pearson_correlation_coefficient <-
  custom_metric( "pearson_correlation_coefficient",
    pearson_correlation_coefficient )

model \%>\% compile( loss = loss_categorical_crossentropy,
  optimizer = optimizer_adam( lr = 0.0001 ),
  metrics = c( metric_pearson_correlation_coefficient ) )

}
\author{
Tustison NJ
}
