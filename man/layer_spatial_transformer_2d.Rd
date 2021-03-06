% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatialTransformerNetworkUtilities.R
\name{layer_spatial_transformer_2d}
\alias{layer_spatial_transformer_2d}
\alias{layer_spatial_transformer_3d}
\title{spatial transformer layer (2-D and 3-D)}
\usage{
layer_spatial_transformer_2d(
  object,
  resampledSize,
  transformType = "affine",
  interpolatorType = "linear",
  name = NULL
)

layer_spatial_transformer_3d(
  object,
  resampledSize,
  transformType = "affine",
  interpolatorType = "linear",
  name = NULL
)
}
\arguments{
\item{object}{Object to compose layer with. This is either a
\link[keras:keras_model_sequential]{keras::keras_model_sequential} to add the layer to,
or another Layer which this layer will call.}

\item{resampledSize}{size of the output in voxels}

\item{transformType}{the spatial transform}

\item{interpolatorType}{interpolation used for the sampling}

\item{name}{The name of the layer#'}
}
\value{
a keras layer tensor
}
\description{
Wraps a custom spatial transformer layer
}
