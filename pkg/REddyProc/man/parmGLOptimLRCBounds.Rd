\name{parmGLOptimLRCBounds}
\alias{parmGLOptimLRCBounds}
\title{parmGLOptimLRCBounds}
\description{Optimize parameters of light response curve and refit with some fixed parameters if fitted parameters are outside bounds}
\usage{parmGLOptimLRCBounds(theta0, parameterPrior, ..., lastGoodParameters.V.n)}
\arguments{
  \item{theta0}{initial parameter estimate}
  \item{parameterPrior}{prior estimate of model parameters}
  \item{\dots}{further parameters to \code{.optimLRC}, such as \code{dsDay}, and \code{ctrl}}
  \item{lastGoodParameters.V.n}{parameters vector of last successful fit}
}
\details{If parameters alpha or k are outside bounds (Table A1 in Lasslop 2010), refit with some parameters fixed 
to values from fit of previous window.

No parameters are reported if alpha<0 or Rb < 0 or beta0 < 0 or beta0 > 250 

No parameters are reported if beta0 > 4*initialEstimate, to avoid cases where data is far away from saturation. }
\value{list result of optimization as of \code{.optimLRC} with entries 
\item{theta}{ numeric parameter vector that includes the fixed components}
\item{iOpt}{ integer vector of indices of the vector that have been optimized}}

\author{TW, MM
(Department for Biogeochemical Integration at MPI-BGC, Jena, Germany)}



\seealso{\code{\link{partGLFitLRC}}}

