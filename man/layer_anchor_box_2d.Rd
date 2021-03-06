% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssdUtilities.R
\name{layer_anchor_box_2d}
\alias{layer_anchor_box_2d}
\alias{layer_anchor_box_3d}
\title{Anchor box layer (2-D and 3-D)}
\usage{
layer_anchor_box_2d(
  object,
  imageSize,
  scale,
  nextScale,
  aspectRatios,
  variances,
  name = NULL,
  trainable = TRUE
)

layer_anchor_box_3d(
  object,
  imageSize,
  scale,
  nextScale,
  aspectRatios,
  variances,
  name = NULL,
  trainable = TRUE
)
}
\arguments{
\item{object}{Object to compose layer with. This is either a
\link[keras:keras_model_sequential]{keras::keras_model_sequential} to add the layer to,
or another Layer which this layer will call.}

\item{imageSize}{size of the image, passed to \code{\link{create_layer}}}

\item{scale}{box scale, passed to \code{\link{create_layer}}}

\item{nextScale}{box scale, passed to \code{\link{create_layer}}}

\item{aspectRatios}{list of ratios used for the boxes,
passed to \code{\link{create_layer}}}

\item{variances}{list of variances, passed to \code{\link{create_layer}}}

\item{name}{The name of the layer}

\item{trainable}{logical indicating if it is trainable or not}
}
\value{
a keras layer tensor
}
\description{
Wraps a custom layer for the SSD network
}
