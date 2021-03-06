% Generated by roxygen2 (4.0.2): do not edit by hand
\name{readXLSample}
\alias{readXLSample}
\title{Read Excel file}
\usage{
readXLSample(filename, sheetname = NULL, address = "B4",
  check.names = c("Lab ID", "Moss species", "Sample ID", "Depth (mm)",
  "Segment length (mm)", "pMC"))
}
\arguments{
\item{filename}{the Excel file to read}

\item{sheetname}{the name of the worksheet to read.  If NULL, the
workbook must contain only one sheet.}

\item{address}{the cell address of the first header cell}

\item{check.names}{the names of the first few columns of data.}
}
\value{
a dataframe of data
}
\description{
Read sample data from an Excel file
}
\details{
This function assumes the data are stored as one contigous block
of cells in an Excel spreadsheet, starting at the cell address
\code{address}.  The function reads the largest contiguous block
that starts at this address and includes every column that has a
heading and every row for which the first three columns are not
all blank.  The function then checks that the first few columns
have the names specified by \code{check.names}.

The function also searches for the date the data were collected in
a cell below the cell containing the text "Date collected". This
date is extracted and added to the data.frame as an attribute.

If \code{sheetname} is NULL, the workbook must consist of a single
sheet.
}

