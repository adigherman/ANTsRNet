% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createDeepConvolutionalGanModel.R
\docType{class}
\name{DeepConvolutionalGanModel}
\alias{DeepConvolutionalGanModel}
\title{Deep convolutional GAN (DCGAN) model}
\description{
Deep convolutional generative adverserial network from the paper:
}
\details{
https://arxiv.org/abs/1511.06434

and ported from the Keras (python) implementation:

https://github.com/eriklindernoren/Keras-GAN/blob/master/dcgan/dcgan.py
}
\section{Arguments}{

\describe{
\item{inputImageSize}{}
\item{latentDimension}{}
}
}

\section{Details}{

\code{$initialize} {instantiates a new class and builds the
generator and discriminator.}
\code{$buildGenerator}{build generator.}
\code{$buildGenerator}{build discriminator.}
}

\examples{
\dontrun{

library( keras )
library( ANTsRNet )

keras::backend()$clear_session()

# Let's use the mnist data set.

mnist <- dataset_mnist()

numberOfTrainingData <- length( mnist$train$y )

inputImageSize <- c( dim( mnist$train$x[1,,] ), 1 )

x <- array( data = mnist$train$x / 255, dim = c( numberOfTrainingData, inputImageSize ) )
y <- mnist$train$y

numberOfClusters <- length( unique( mnist$train$y ) )

# Instantiate the DCEC model

ganModel <- DeepConvolutionalGanModel$new(
   inputImageSize = inputImageSize,
   latentDimension = 100 )

ganModel$train( x, numberOfEpochs = 100 )
}

}
\author{
Tustison NJ
}
