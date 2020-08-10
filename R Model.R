library(ggplot2)

#read the data file
fb = read.csv('./pseudo_facebook.tsv', sep='\t')

#show columns
head(fb)

#plot the histogram
ggplot(aes(x=dob_day), data=fb) + 
  geom_histogram(binwidth=1) + #binwidth is set to 1
  scale_x_continuous(breaks=1:31) # with 31 breaks
