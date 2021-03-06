% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createInpaintingDeepFillModel.R
\docType{class}
\name{InpaintingDeepFillModel}
\alias{InpaintingDeepFillModel}
\title{In-painting with contextual attention}
\description{
Original generative adverserial network (GAN) model from the
paper:
}
\details{
https://arxiv.org/abs/1801.07892

and ported from the (TensorFlow) implementation:

https://github.com/JiahuiYu/generative_inpainting
}
\section{Arguments}{

\describe{
\item{inputImageSize}{}
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

}

}
\author{
Tustison NJ
}
