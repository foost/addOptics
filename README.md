# addOptics: A mostly useless package for demo purposes to calculate Optics clusters

## Introduction

This package was created as part of an eScience Center "Reproducible Research with R Packages". 
The contained functions are for demonstration purposes and offer little practical value. (sorry 
if your search engine sent you here on false promises!). In this they differ fundamentally 
from the course itself, which was very useful and enjoyable. 

## Installation

Install from Github. 
```
devtools::install_github("foost/addOptics")
````

Requires R packages "dbscan" and "plyr". Contains an example data file. 

## Usage

The package has two functions, which require a CSV file with point data, then 
calculate OPTICS clusters, extract DBSCAN or Xi cluster IDs respectively, add 
the cluster ID to the data frame, and return it. 

Further parameters are the two column numbers that contain the coordinates, and 
clustering parameters (see dbscan R package for details). 

Example: 

```
filepath <- system.file("extdata", "addOpticsExample.csv", package = "addOptics")
opticsClusters <- OpticsXtractDBSCAN(filepath, 4, 5, 0.005, 5, 0.004)
```
 Vignettes available
 
``` 
browseVignettes("addOptics") 
```

## License

Apache 2.0
