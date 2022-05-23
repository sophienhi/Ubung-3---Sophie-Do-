#creating a phylogenetic tree

install.packages("ape")
install.packages("phangorn")

setwd("C:/Users/sophi/Documents/Universität/6. Semester/Bioinformatik")

library(phangorn)
fdir<- system.file("extdata/trees", package = "phangorn")
primates <- read.phyDat(file.path(fdir, "primates.dna"),
                        format = "interleaved")

# distance matrix
distanceMatrixPrimates  <- dist.ml(primates)

# tree construction algorihtms UPGMA and NJ
treeUPGMA_Primates  <- upgma(distanceMatrixPrimates)
treeNJ_Primates  <- NJ(distanceMatrixPrimates)

# plot UPGMA tree
plot(treeUPGMA_Primates, main="UPGMA")

#plot NJ tree
plot(treeNJ_Primates, "unrooted", main="NJ")

