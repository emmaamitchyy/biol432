#Week 07: sequencing and Alignments: 

#PART 01: 


#Defne a list of GenBank IDs for Borrelia burgdorferi 16s gene sequences
ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1") 

#Opens the rentrez package, this is used to work in the NCBI databases
library(rentrez) 

# gets sequences from genbank in FASTA format 
Bburg<-entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta")

#print sequences: 
print(Bburg)

#Split the sequences by newline characters to separate them
Sequences <- strsplit(Bburg, "\n\n")[[1]]
print(Sequences)

#Convert to a Data Frame: 

# sequence names: Sequences <- unlist(Sequences)

header<-gsub("(^>.*sequence)\\n[ATCG].*","\\1", Sequences)

seq<-gsub("^>.*sequence\\n([ATCG].*)","\\1", Sequences)

Sequences<-data.frame(Name=header,Sequence=seq)

Sequences$Name <- gsub(">", "", Sequences$Name)

write.csv(Sequences, "Sequences.csv")



