install.packages("RColorBrewer")
library("RColorBrewer")
display.brewer.all()

library(readxl)
otu_table_s_relative_1_ <- read_excel("D:/New Folder/Locker/Project Study/PUBLIKASI/prof suruh R/otu_table.s.relative (1).xlsx", 
                                      col_types = c("text", "numeric", "numeric", 
                                                    "numeric"))
View(otu_table_s_relative_1_)
head(otu_table_s_relative_1_)
bp1 <-read_excel(file.choose())
barplot(bp1$Control, col = brewer.pal(n=10, name="Set1"), ylim = c(0,1), names = bp1$Taxonomy, las=2, cex.names=0.7)
par(mar=c(8,4,4,1)+.1)

##TTTTTTTTTTEEEEEEEEEEEEEEESSSSSSSSSSSSSSSSSSS

##### Example 5
data <- as.matrix(data.frame(Control = c(0.026, 0.519, 0.345, 0.003, 0.04, 0.033, 0.0007, 0.005, 0.0007, 0.0251),         # Create matrix for stacked barchart
                             Promic = c(0.016, 0.006, 0.007, 0.134, 0.001, 0.0004, 0.023, 0.017, 0.001, 0.789),
                             Gumer = c(0.959, 0.003, 0.005, 0.002, 0.007, 0.0003, 0.0003, 0.0002, 0.0006, 0.011)))
rownames(data) <- c("W. paramesenteroides", "L. lactis", "W. ghanensis", "L. casei", "L. pseudomosenteroides", "P. dispersa", "L. harbinensis", "L. buchneri", "B. adolescentis", "Others")
data                                                  # Print matrix to console

par(mar = c(5, 4, 4, 17),                                  # Specify par parameters
    xpd = TRUE)

barplot(data, ylim = c(0,1),  beside = FALSE ,  ylab = "Relative Abundance" ,  xlab = "Sample Name",                                 # Create stacked barchart
        col = c("#1b98e0", "#353436", "green", "purple", "red", "orange", "brown", "cyan", "pink", "yellow"))

legend("topright",  inset = c(- 1.1, 0),                               # Add legend to barplot
       legend = c("Weisella paramesenteroides", "Lactobacillus lactis", "Weissella ghanensis", "Lactobacillus casei", "Leuconostoc pseudomosenteroides", "Pantoea dispersa", "Lactobacillus harbinensis", "Lactobacillus buchneri", "Bifidobacterium adolescentis", "Others"),
       fill = c("#1b98e0", "#353436", "green", "purple", "red", "orange", "brown", "cyan", "pink", "yellow"))

