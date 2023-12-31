% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transomics2cytoscape.R
\name{create3Dnetwork}
\alias{create3Dnetwork}
\title{Create 3D network view for transomics visualization.}
\usage{
create3Dnetwork(networkDataDir, networkLayers, stylexml)
}
\arguments{
\item{networkDataDir}{Path of a directory to put the network files
of the second column of networkLayers TSV.}

\item{networkLayers}{Path of a TSV file with the 4 columns (layer index,
the network file name in networkDataDir, Z-height of the network,
whether to interact not only with the nodes of each network layer but also
with the edges).}

\item{stylexml}{Path of a XML file for Cytoscape style}
}
\value{
A SUID of the 3D network.
}
\description{
Import multiple KEGG pathways and integrate the pathways
into Cy3D renderer
}
\examples{
\dontrun{
networkDataDir <- tempfile(); dir.create(networkDataDir)
networkLayers <- system.file("extdata/usecase1", "yugi2014.tsv",
    package = "transomics2cytoscape")
stylexml <- system.file("extdata/usecase1", "yugi2014.xml",
    package = "transomics2cytoscape")
suid <- create3Dnetwork(networkDataDir, networkLayers, stylexml)
}
}
\author{
Kozo Nishida
}
