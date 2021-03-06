% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_refseq.R
\name{download_refseq}
\alias{download_refseq}
\title{Download RefSeq genome libraries}
\usage{
download_refseq(kingdom, reference = TRUE, representative = FALSE,
  compress = TRUE)
}
\arguments{
\item{kingdom}{Select the kingdom taxonomy to download. Options are 'archaea', 'bacteria', 'fungi', 'invertebrate', 'plant', 'protozoa', 'vertibrate', 'vertibrate_other', 'viral'}

\item{reference}{Download only RefSeq reference genomes? Defaults to TRUE. Automatically set to TURE if representative is TRUE}

\item{representative}{Download only RefSeq representative genomes? Defaults to FALSE. If TRUE, reference is automatically set at TRUE}

\item{compress}{Compress the output .fasta file? Defaults to TRUE}
}
\value{
Returns a .fasta or .fasta.gz file of the desired RefSeq genomes. This file is named after the kindom selectd and saved to the current directory (e.g. 'bacteria.fasta.gz'). Currently, this function also returns a .fasta file formatted for PathoScope as well (e.g. 'bacteria.pathoscope.fasta.gz'), but this will soon be retired.
}
\description{
This function will automatically download RefSeq genome libraries in a .fasta format from the specified kingdom. The function will first download the summary report at: ftp://ftp.ncbi.nlm.nih.gov/genomes/**kingdom**/overview.txt, and then use this file to download genomes and combine them in a single compressed or uncompressed .fasta file.
}
\examples{
## Download all RefSeq reference bacterial genomes
download_refseq('bacteria')

## Download all RefSeq representative viral genomes
download_refseq( 'viral', representative = TRUE )

## Download all RefSeq viral genomes
download_refseq( 'viral', reference = FALSE ) 

}
