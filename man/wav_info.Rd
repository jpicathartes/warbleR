% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wav_info.R
\name{wav_info}
\alias{wav_info}
\title{Get wave file parameter information}
\usage{
wav_info(path = NULL, parallel = 1, pb = TRUE)
}
\arguments{
\item{path}{Character string containing the directory path where the sound files are located. 
If \code{NULL} (default) then the current working directory is used.}

\item{parallel}{Numeric. Controls whether parallel computing is applied.
It specifies the number of cores to be used. Default is 1 (i.e. no parallel computing).}

\item{pb}{Logical argument to control progress bar and messages. Default is \code{TRUE}.}
}
\value{
A data frame with descriptive information about the wave files in the working directory (or 'path'). See "details".
}
\description{
\code{wav_info} is a wrapper for \code{\link{selection_table}} that returns wave file information
}
\details{
This function is a wrapper for \code{\link{selection_table}} that returns a data frame with the following descriptive parameters for each wave file in the working directory (or 'path'):
\itemize{
   \item \code{duration}: duration of selection in seconds
   \item \code{sample.rate}: sampling rate in kHz
   \item \code{channels}: number of channels
   \item \code{bits}: bit depth
   \item \code{wav.size}: wave file size in MB
   \item \code{samples}: number of samples in the sound file
   }
}
\examples{
{
# Set temporary working directory
# First set temporary folder
 # setwd(tempdir())

data(list = c("Phae.long1", "Phae.long2", "Phae.long3", "Phae.long4", "selec.table"))
writeWave(Phae.long1,"Phae.long1.wav")
writeWave(Phae.long2,"Phae.long2.wav")
writeWave(Phae.long3,"Phae.long3.wav")
writeWave(Phae.long4,"Phae.long4.wav")
 
#get info
wav_info()
}

}
\references{
{
Araya-Salas, M., & Smith-Vidaurre, G. (2017). warbleR: An R package to streamline analysis of animal acoustic signals. Methods in Ecology and Evolution, 8(2), 184-191.
}
}
\seealso{
\code{\link{fixwavs}}, \code{\link{selection_table}} & \code{\link{checksels}}
}
\author{
Marcelo Araya-Salas (\email{araya-salas@cornell.edu})
}
